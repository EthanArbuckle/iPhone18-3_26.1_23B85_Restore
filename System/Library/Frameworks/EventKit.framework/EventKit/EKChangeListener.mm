@interface EKChangeListener
+ (BOOL)isSyncStatusChangeNotification:(id)a3;
+ (id)changedIdentifiersForNotification:(id)a3;
+ (id)updatedObjectFor:(id)a3 changeNotification:(id)a4;
- (EKChangeListener)init;
- (id)_orderedDelegates;
- (void)objectsChangedNotification:(id)a3;
- (void)registerDelegate:(id)a3;
@end

@implementation EKChangeListener

- (EKChangeListener)init
{
  v7.receiver = self;
  v7.super_class = EKChangeListener;
  v2 = [(EKChangeListener *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [(EKChangeListener *)v2 setDelegates:v3];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_objectsChangedNotification_ name:@"EKEventModifiedNotification" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_objectsChangedNotification_ name:@"EKEventStoreChangedNotification" object:0];
  }

  return v2;
}

- (void)registerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(EKChangeListener *)self delegates];
  [v5 addPointer:v4];
}

- (id)_orderedDelegates
{
  v2 = [(EKChangeListener *)self delegates];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_14];

  return v4;
}

uint64_t __37__EKChangeListener__orderedDelegates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v4 hasUpdatePriority])
  {
    v6 = -1;
  }

  else
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && ([v5 hasUpdatePriority] & 1) != 0;
  }

  return v6;
}

- (void)objectsChangedNotification:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![EKChangeListener isSyncStatusChangeNotification:v4])
  {
    v5 = [(EKChangeListener *)self delegates];
    [v5 compact];

    v35 = [v4 userInfo];
    v6 = [v35 objectForKeyedSubscript:@"EKEventStoreRevert"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [v4 userInfo];
      v42 = [v8 objectForKeyedSubscript:@"EKEventStoreModifiedEventIdentifier"];
    }

    else
    {
      v42 = 0;
    }

    v36 = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(EKChangeListener *)self _orderedDelegates];
    v43 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v43)
    {
      v41 = *v65;
      v39 = self;
      v40 = v4;
      v38 = v7;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v64 + 1) + 8 * i);
          v11 = [MEMORY[0x1E695DF90] dictionary];
          v12 = [MEMORY[0x1E695DF70] array];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __47__EKChangeListener_objectsChangedNotification___block_invoke;
          aBlock[3] = &unk_1E77FD9E8;
          aBlock[4] = self;
          v59 = v4;
          v13 = v11;
          v60 = v13;
          v63 = v7;
          v61 = v42;
          v14 = v12;
          v62 = v14;
          v15 = _Block_copy(aBlock);
          if (objc_opt_respondsToSelector())
          {
            v16 = [v10 trackedObjectMap];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v54 objects:v70 count:16];
            if (v17)
            {
              v18 = v17;
              v44 = v14;
              v45 = v13;
              v19 = *v55;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v55 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v54 + 1) + 8 * j);
                  v22 = [v16 objectForKeyedSubscript:v21];
                  v15[2](v15, v21, v22);
                }

                v18 = [v16 countByEnumeratingWithState:&v54 objects:v70 count:16];
              }

              while (v18);
LABEL_26:
              self = v39;
              v4 = v40;
              v7 = v38;
              v14 = v44;
              v13 = v45;
            }
          }

          else
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v16 = [v10 trackedObjects];
            v23 = [v16 countByEnumeratingWithState:&v50 objects:v69 count:16];
            if (v23)
            {
              v24 = v23;
              v44 = v14;
              v45 = v13;
              v25 = *v51;
              do
              {
                for (k = 0; k != v24; ++k)
                {
                  if (*v51 != v25)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v27 = *(*(&v50 + 1) + 8 * k);
                  v28 = [v27 specificIdentifier];
                  (v15)[2](v15, v28, v27);
                }

                v24 = [v16 countByEnumeratingWithState:&v50 objects:v69 count:16];
              }

              while (v24);
              goto LABEL_26;
            }
          }

          if (v7 && [v14 count] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v10 trackedObjectsDidRevert:v14];
          }

          [v10 trackedObjectsDidUpdate:v13];
          if (objc_opt_respondsToSelector())
          {
            [v36 addObject:v10];
          }
        }

        v43 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v43);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v29 = v36;
    v30 = [v29 countByEnumeratingWithState:&v46 objects:v68 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v47;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v46 + 1) + 8 * m) notifyObservers];
        }

        v31 = [v29 countByEnumeratingWithState:&v46 objects:v68 count:16];
      }

      while (v31);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __47__EKChangeListener_objectsChangedNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() updatedObjectFor:v4 changeNotification:*(a1 + 40)];
  v7 = [v4 specificIdentifier];
  if (v7)
  {
    if (v6)
    {
      [*(a1 + 48) setObject:v6 forKeyedSubscript:v7];
    }

    if (*(a1 + 72) == 1 && [*(a1 + 56) isEqualToString:v7])
    {
      [*(a1 + 64) addObject:v4];
    }
  }

  else
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKChangeListener_objectsChangedNotification___block_invoke_cold_1(v4, v8);
    }
  }
}

+ (id)updatedObjectFor:(id)a3 changeNotification:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"EKEventStoreChangeTypeUserInfoKey"];
  v9 = v8;
  if (v8 && [v8 integerValue] != 1)
  {
    v13 = v5;
    goto LABEL_18;
  }

  v10 = [v7 objectForKeyedSubscript:@"EKEventStoreRevert"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [v6 object];

    if (v12)
    {
      v13 = [v6 object];
      v14 = [v13 specificIdentifier];
      v15 = [v5 specificIdentifier];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        goto LABEL_18;
      }
    }
  }

  v17 = [objc_opt_class() changedIdentifiersForNotification:v6];
  v18 = [v5 uniqueIdentifier];
  v19 = [v17 containsObject:v18];

  if ((v19 & 1) == 0 && v17)
  {
    goto LABEL_16;
  }

  if (![v5 _refreshable])
  {
    v13 = [v6 object];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if ([v5 refreshAndNotify:0])
  {
LABEL_16:
    v13 = v5;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

+ (id)changedIdentifiersForNotification:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_sync_enter(v3);
  v4 = objc_getAssociatedObject(v3, &changedIdentifiersForNotification__associatedObjectKey);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
    }

    else
    {
      v4 = v4;
      v5 = v4;
    }
  }

  else
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"EKEventStoreModifiedEventIdentifier"];

    if (v7)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      objc_setAssociatedObject(v3, &changedIdentifiersForNotification__associatedObjectKey, v5, 1);
      v4 = 0;
    }

    else
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

      if (v9)
      {
        v10 = [v3 object];
        v11 = [MEMORY[0x1E695DFA8] set];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          v14 = *v22;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              if ([v16 entityType] == 2)
              {
                [v11 addObject:v16];
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        v17 = [v10 uniqueIdentifiersForEventsWithObjectIDs:v11];
        if (v17)
        {
          objc_setAssociatedObject(v3, &changedIdentifiersForNotification__associatedObjectKey, v17, 1);
        }

        else
        {
          v18 = [MEMORY[0x1E695DFB0] null];
          objc_setAssociatedObject(v3, &changedIdentifiersForNotification__associatedObjectKey, v18, 1);
        }

        v4 = v17;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
    }
  }

  objc_sync_exit(v3);
  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)isSyncStatusChangeNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"EKEventStoreChangeTypeUserInfoKey"];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__EKChangeListener_objectsChangedNotification___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unexpected nil specificIdentifier for object: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end