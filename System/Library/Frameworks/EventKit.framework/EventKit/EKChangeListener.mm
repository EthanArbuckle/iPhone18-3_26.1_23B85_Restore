@interface EKChangeListener
+ (BOOL)isSyncStatusChangeNotification:(id)notification;
+ (id)changedIdentifiersForNotification:(id)notification;
+ (id)updatedObjectFor:(id)for changeNotification:(id)notification;
- (EKChangeListener)init;
- (id)_orderedDelegates;
- (void)objectsChangedNotification:(id)notification;
- (void)registerDelegate:(id)delegate;
@end

@implementation EKChangeListener

- (EKChangeListener)init
{
  v7.receiver = self;
  v7.super_class = EKChangeListener;
  v2 = [(EKChangeListener *)&v7 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [(EKChangeListener *)v2 setDelegates:weakObjectsPointerArray];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_objectsChangedNotification_ name:@"EKEventModifiedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_objectsChangedNotification_ name:@"EKEventStoreChangedNotification" object:0];
  }

  return v2;
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(EKChangeListener *)self delegates];
  [delegates addPointer:delegateCopy];
}

- (id)_orderedDelegates
{
  delegates = [(EKChangeListener *)self delegates];
  allObjects = [delegates allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_14];

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

- (void)objectsChangedNotification:(id)notification
{
  v72 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (![EKChangeListener isSyncStatusChangeNotification:notificationCopy])
  {
    delegates = [(EKChangeListener *)self delegates];
    [delegates compact];

    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"EKEventStoreRevert"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      userInfo2 = [notificationCopy userInfo];
      v42 = [userInfo2 objectForKeyedSubscript:@"EKEventStoreModifiedEventIdentifier"];
    }

    else
    {
      v42 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(EKChangeListener *)self _orderedDelegates];
    v43 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v43)
    {
      v41 = *v65;
      selfCopy = self;
      v40 = notificationCopy;
      v38 = bOOLValue;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v64 + 1) + 8 * i);
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          array2 = [MEMORY[0x1E695DF70] array];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __47__EKChangeListener_objectsChangedNotification___block_invoke;
          aBlock[3] = &unk_1E77FD9E8;
          aBlock[4] = self;
          v59 = notificationCopy;
          v13 = dictionary;
          v60 = v13;
          v63 = bOOLValue;
          v61 = v42;
          v14 = array2;
          v62 = v14;
          v15 = _Block_copy(aBlock);
          if (objc_opt_respondsToSelector())
          {
            trackedObjectMap = [v10 trackedObjectMap];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v17 = [trackedObjectMap countByEnumeratingWithState:&v54 objects:v70 count:16];
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
                    objc_enumerationMutation(trackedObjectMap);
                  }

                  v21 = *(*(&v54 + 1) + 8 * j);
                  v22 = [trackedObjectMap objectForKeyedSubscript:v21];
                  v15[2](v15, v21, v22);
                }

                v18 = [trackedObjectMap countByEnumeratingWithState:&v54 objects:v70 count:16];
              }

              while (v18);
LABEL_26:
              self = selfCopy;
              notificationCopy = v40;
              bOOLValue = v38;
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
            trackedObjectMap = [v10 trackedObjects];
            v23 = [trackedObjectMap countByEnumeratingWithState:&v50 objects:v69 count:16];
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
                    objc_enumerationMutation(trackedObjectMap);
                  }

                  v27 = *(*(&v50 + 1) + 8 * k);
                  specificIdentifier = [v27 specificIdentifier];
                  (v15)[2](v15, specificIdentifier, v27);
                }

                v24 = [trackedObjectMap countByEnumeratingWithState:&v50 objects:v69 count:16];
              }

              while (v24);
              goto LABEL_26;
            }
          }

          if (bOOLValue && [v14 count] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v10 trackedObjectsDidRevert:v14];
          }

          [v10 trackedObjectsDidUpdate:v13];
          if (objc_opt_respondsToSelector())
          {
            [array addObject:v10];
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
    v29 = array;
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

+ (id)updatedObjectFor:(id)for changeNotification:(id)notification
{
  forCopy = for;
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"EKEventStoreChangeTypeUserInfoKey"];
  v9 = v8;
  if (v8 && [v8 integerValue] != 1)
  {
    object2 = forCopy;
    goto LABEL_18;
  }

  v10 = [userInfo objectForKeyedSubscript:@"EKEventStoreRevert"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    object = [notificationCopy object];

    if (object)
    {
      object2 = [notificationCopy object];
      specificIdentifier = [object2 specificIdentifier];
      specificIdentifier2 = [forCopy specificIdentifier];
      v16 = [specificIdentifier isEqual:specificIdentifier2];

      if (v16)
      {
        goto LABEL_18;
      }
    }
  }

  v17 = [objc_opt_class() changedIdentifiersForNotification:notificationCopy];
  uniqueIdentifier = [forCopy uniqueIdentifier];
  v19 = [v17 containsObject:uniqueIdentifier];

  if ((v19 & 1) == 0 && v17)
  {
    goto LABEL_16;
  }

  if (![forCopy _refreshable])
  {
    object2 = [notificationCopy object];
    if (object2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if ([forCopy refreshAndNotify:0])
  {
LABEL_16:
    object2 = forCopy;
    goto LABEL_17;
  }

  object2 = 0;
LABEL_17:

LABEL_18:

  return object2;
}

+ (id)changedIdentifiersForNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  objc_sync_enter(notificationCopy);
  v4 = objc_getAssociatedObject(notificationCopy, &changedIdentifiersForNotification__associatedObjectKey);
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
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"EKEventStoreModifiedEventIdentifier"];

    if (v7)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      objc_setAssociatedObject(notificationCopy, &changedIdentifiersForNotification__associatedObjectKey, v5, 1);
      v4 = 0;
    }

    else
    {
      userInfo2 = [notificationCopy userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:@"EKEventStoreChangedObjectIDsUserInfoKey"];

      if (v9)
      {
        object = [notificationCopy object];
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

        v17 = [object uniqueIdentifiersForEventsWithObjectIDs:v11];
        if (v17)
        {
          objc_setAssociatedObject(notificationCopy, &changedIdentifiersForNotification__associatedObjectKey, v17, 1);
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          objc_setAssociatedObject(notificationCopy, &changedIdentifiersForNotification__associatedObjectKey, null, 1);
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

  objc_sync_exit(notificationCopy);
  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)isSyncStatusChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"EKEventStoreChangeTypeUserInfoKey"];

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