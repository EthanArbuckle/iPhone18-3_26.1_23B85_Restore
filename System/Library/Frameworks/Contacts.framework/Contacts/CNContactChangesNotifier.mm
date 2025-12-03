@interface CNContactChangesNotifier
+ (CNContactChangesObserverProxy)createProxyForObserver:(void *)observer keysToFetch:;
+ (id)os_log;
+ (id)sharedNotifier;
+ (id)workQueue_createFetchersFromRegisteredObservers:(id)observers;
- (BOOL)resourceLock_removeProxiesForIdentifier:(void *)identifier passingTest:;
- (CNContactChangesNotifier)init;
- (CNContactChangesNotifier)initWithContactStore:(id)store downstreamScheduler:(id)scheduler schedulerProvider:(id)provider;
- (void)contactStoreDidChange:(id)change;
- (void)registerObserver:(id)observer forContact:(id)contact;
- (void)registerObserver:(id)observer forContact:(id)contact keysToFetch:(id)fetch completionHandler:(id)handler;
- (void)registerProxy:(void *)proxy identifier:;
- (void)removeEntriesWithoutObservers;
- (void)removeProxiesForObserver:(void *)observer forContact:(void *)contact completionHandler:;
- (void)timerDidEmitEvent:(id)event;
- (void)workQueue_updateObservers;
- (void)workQueue_updateObserving;
@end

@implementation CNContactChangesNotifier

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_1_3 != -1)
  {
    +[CNContactChangesNotifier os_log];
  }

  v0 = os_log_cn_once_object_1_3;

  return v0;
}

uint64_t __34__CNContactChangesNotifier_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "notifications");
  v1 = os_log_cn_once_object_1_3;
  os_log_cn_once_object_1_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)workQueue_updateObserving
{
  if (self)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = *(self + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__CNContactChangesNotifier_workQueue_updateObserving__block_invoke;
    v5[3] = &unk_1E7412358;
    v5[4] = self;
    v5[5] = &v6;
    [v2 performBlock:v5];

    if (v7[3])
    {
      if ((*(self + 8) & 1) == 0)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel_contactStoreDidChange_ name:@"CNContactStoreDidChangeNotification" object:0];
        v4 = 1;
LABEL_7:

        *(self + 8) = v4;
      }
    }

    else if (*(self + 8))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"CNContactStoreDidChangeNotification" object:0];
      v4 = 0;
      goto LABEL_7;
    }

    _Block_object_dispose(&v6, 8);
  }
}

- (void)removeEntriesWithoutObservers
{
  objc_opt_class();
  v3 = +[CNContactChangesNotifier os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_INFO, "Scheduling removal of entries without observers", v4, 2u);
  }

  [(CNCoalescingTimer *)self->_entryCompactionTimer handleEvent];
}

void __53__CNContactChangesNotifier_workQueue_updateObserving__block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v0)
  {
    v0 = v0[7];
  }

  v3 = v0;
  [v3 count];
  OUTLINED_FUNCTION_5_2();
  *(v2 + 24) = v1;
}

+ (id)sharedNotifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CNContactChangesNotifier_sharedNotifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedNotifier_cn_once_token_0 != -1)
  {
    dispatch_once(&sharedNotifier_cn_once_token_0, block);
  }

  v2 = sharedNotifier_cn_once_object_0;

  return v2;
}

uint64_t __42__CNContactChangesNotifier_sharedNotifier__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedNotifier_cn_once_object_0;
  sharedNotifier_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (CNContactChangesNotifier)init
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = objc_alloc_init(CNContactStore);
  mainThreadScheduler = [defaultProvider mainThreadScheduler];
  v6 = [(CNContactChangesNotifier *)self initWithContactStore:v4 downstreamScheduler:mainThreadScheduler schedulerProvider:defaultProvider];

  return v6;
}

- (CNContactChangesNotifier)initWithContactStore:(id)store downstreamScheduler:(id)scheduler schedulerProvider:(id)provider
{
  storeCopy = store;
  schedulerCopy = scheduler;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = CNContactChangesNotifier;
  v12 = [(CNContactChangesNotifier *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, store);
    v14 = [providerCopy newSerialSchedulerWithName:@"com.apple.Contacts.CNContactChangesNotifier.workQueue"];
    workQueue = v13->_workQueue;
    v13->_workQueue = v14;

    objc_storeStrong(&v13->_downstream, scheduler);
    v16 = [providerCopy newSynchronousSerialSchedulerWithName:@"com.apple.Contacts.CNContactChangesNotifier.resourceLock"];
    resourceLock = v13->_resourceLock;
    v13->_resourceLock = v16;

    multiDictionary = [MEMORY[0x1E6996780] multiDictionary];
    registeredObservers = v13->_registeredObservers;
    v13->_registeredObservers = multiDictionary;

    v20 = [objc_alloc(MEMORY[0x1E6996678]) initWithDelay:0 options:v13 delegate:1.0];
    entryCompactionTimer = v13->_entryCompactionTimer;
    v13->_entryCompactionTimer = v20;

    v22 = v13;
  }

  return v13;
}

- (void)registerObserver:(id)observer forContact:(id)contact
{
  v10[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  observerCopy = observer;
  availableKeyDescriptor = [contactCopy availableKeyDescriptor];
  v10[0] = availableKeyDescriptor;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(CNContactChangesNotifier *)self registerObserver:observerCopy forContact:contactCopy keysToFetch:v9];
}

- (void)registerObserver:(id)observer forContact:(id)contact keysToFetch:(id)fetch completionHandler:(id)handler
{
  observerCopy = observer;
  contactCopy = contact;
  fetchCopy = fetch;
  handlerCopy = handler;
  if (contactCopy)
  {
    hasBeenPersisted = [contactCopy hasBeenPersisted];
    if (observerCopy)
    {
      if (hasBeenPersisted)
      {
        v15 = [CNContactChangesNotifier createProxyForObserver:observerCopy keysToFetch:fetchCopy];
        identifier = [contactCopy identifier];
        [(CNContactChangesNotifier *)self registerProxy:v15 identifier:identifier];

        snapshot = [contactCopy snapshot];
        [(CNContactChangesObserverProxy *)v15 setContactSnapshot:snapshot];

        isUnified = [contactCopy isUnified];
        if (v15)
        {
          v15[8] = isUnified;
        }

        if (handlerCopy)
        {
          [CNContactChangesNotifier registerObserver:v19 forContact:handlerCopy keysToFetch:? completionHandler:?];
        }

        goto LABEL_11;
      }
    }
  }

  if (handlerCopy)
  {
    [CNContactChangesNotifier registerObserver:v20 forContact:handlerCopy keysToFetch:&v21 completionHandler:?];
    v15 = v21;
LABEL_11:
  }
}

void __86__CNContactChangesNotifier_registerObserver_forContact_keysToFetch_completionHandler___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = *MEMORY[0x1E696A588];
  v5[0] = @"contact and observer can't be nil and contact needs to be persisted";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [CNErrorFactory errorWithCode:1002 userInfo:v2];
  (*(v1 + 16))(v1, v3);
}

void __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = [*(a1 + 32) identifier];
    v27[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[7];
    }

    v3 = v5;
    v4 = [v3 allKeys];
  }

  v6 = v4;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7416620;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v22 = &v23;
  v20[4] = v7;
  v21 = v8;
  [v6 _cn_each:v20];
  if (*(v24 + 24) == 1)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = v9[3];
    }

    v10 = v9;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_4;
    v19[3] = &unk_1E7412A88;
    v19[4] = *(a1 + 40);
    [v10 performBlock:v19 qualityOfService:2];

    if (*(a1 + 56))
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v11 = v11[4];
      }

      v12 = v11;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_5;
      v17[3] = &unk_1E74142B8;
      v18 = *(a1 + 56);
      [v12 performBlock:v17];
    }
  }

  else if (*(a1 + 56))
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      v13 = v13[4];
    }

    v14 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_6;
    v15[3] = &unk_1E74142B8;
    v16 = *(a1 + 56);
    [v14 performBlock:v15];
  }

  _Block_object_dispose(&v23, 8);
}

void __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_3;
  v5[3] = &unk_1E74165F8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) = [(CNContactChangesNotifier *)v4 resourceLock_removeProxiesForIdentifier:a2 passingTest:v5];
}

uint64_t __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((a2 + 16));
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained == *(a1 + 32);

  return v4;
}

void __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke_6(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = *MEMORY[0x1E696A588];
  v5[0] = @"The observer to be unregistered hasn't been found.";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [CNErrorFactory errorWithCode:1003 userInfo:v2];
  (*(v1 + 16))(v1, v3);
}

- (void)workQueue_updateObservers
{
  v87 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v48 = *(self + 40);
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__27;
    v81 = __Block_byref_object_dispose__27;
    v82 = 0;
    v2 = *(self + 16);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke;
    v76[3] = &unk_1E7412358;
    v76[5] = &v77;
    selfCopy = self;
    v76[4] = self;
    [v2 performBlock:v76];

    v3 = [objc_opt_class() workQueue_createFetchersFromRegisteredObservers:v78[5]];
    v49 = [MEMORY[0x1E695DFA8] set];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v4)
    {
      v50 = *v73;
      do
      {
        v5 = 0;
        do
        {
          if (*v73 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v72 + 1) + 8 * v5);
          if (v6)
          {
            v7 = *(v6 + 16);
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          allObjects = [v8 allObjects];
          v10 = [CNContact predicateForContactsWithIdentifiers:allObjects];

          v11 = [CNContactFetchRequest alloc];
          if (v6)
          {
            v12 = *(v6 + 24);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          allObjects2 = [v13 allObjects];
          v15 = [(CNContactFetchRequest *)v11 initWithKeysToFetch:allObjects2];

          [(CNContactFetchRequest *)v15 setPredicate:v10];
          if (v6)
          {
            v16 = *(v6 + 8);
          }

          else
          {
            v16 = 0;
          }

          [(CNContactFetchRequest *)v15 setUnifyResults:v16 & 1];
          array = [MEMORY[0x1E695DF70] array];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          if (v6)
          {
            v18 = *(v6 + 16);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          allObjects3 = [v19 allObjects];

          v21 = [allObjects3 countByEnumeratingWithState:&v68 objects:v85 count:16];
          if (v21)
          {
            v22 = *v69;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v69 != v22)
                {
                  objc_enumerationMutation(allObjects3);
                }

                v24 = [v78[5] objectsForKey:*(*(&v68 + 1) + 8 * i)];
                if (v24)
                {
                  [array addObjectsFromArray:v24];
                }
              }

              v21 = [allObjects3 countByEnumeratingWithState:&v68 objects:v85 count:16];
            }

            while (v21);
          }

          v25 = *(selfCopy + 32);
          v26 = *(selfCopy + 16);
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_62;
          v63[3] = &unk_1E7416690;
          v27 = array;
          v64 = v27;
          v65 = v49;
          v28 = v25;
          v66 = v28;
          v29 = v26;
          v67 = v29;
          [v48 enumerateContactsWithFetchRequest:v15 error:0 usingBlock:v63];

          ++v5;
        }

        while (v5 != v4);
        v30 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
        v4 = v30;
      }

      while (v30);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    allKeys = [v78[5] allKeys];
    v47 = [allKeys countByEnumeratingWithState:&v59 objects:v84 count:16];
    if (v47)
    {
      v46 = *v60;
      v44 = allKeys;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v32 = *(*(&v59 + 1) + 8 * j);
          if (([v49 containsObject:v32] & 1) == 0)
          {
            v33 = [v78[5] objectsForKey:v32];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v34 = v33;
            v35 = [v34 countByEnumeratingWithState:&v55 objects:v83 count:16];
            if (v35)
            {
              v36 = *v56;
              do
              {
                v37 = 0;
                do
                {
                  if (*v56 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v38 = *(*(&v55 + 1) + 8 * v37);
                  if (v38)
                  {
                    WeakRetained = objc_loadWeakRetained((v38 + 16));
                  }

                  else
                  {
                    WeakRetained = 0;
                  }

                  v40 = objc_opt_respondsToSelector();

                  if (v40)
                  {
                    v41 = *(selfCopy + 32);
                    v54[0] = MEMORY[0x1E69E9820];
                    v54[1] = 3221225472;
                    v54[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_4;
                    v54[3] = &unk_1E7412A60;
                    v54[4] = selfCopy;
                    v54[5] = v38;
                    v54[6] = v32;
                    [v41 performBlock:v54];
                  }

                  ++v37;
                }

                while (v35 != v37);
                v42 = [v34 countByEnumeratingWithState:&v55 objects:v83 count:16];
                v35 = v42;
              }

              while (v42);
            }

            v43 = *(selfCopy + 16);
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_6;
            v53[3] = &unk_1E74121B8;
            v53[4] = selfCopy;
            v53[5] = v32;
            [v43 performBlock:v53];
          }
        }

        allKeys = v44;
        v47 = [v44 countByEnumeratingWithState:&v59 objects:v84 count:16];
      }

      while (v47);
    }

    _Block_object_dispose(&v77, 8);
  }
}

void __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_62(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v26 = a1;
    v27 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v4 = _block_invoke_1(v4, v3, v8);
        if (v4)
        {
          v9 = *(a1 + 40);
          if (v8)
          {
            v10 = *(v8 + 32);
            v11 = [v10 identifier];
            [v9 addObject:v11];

            v12 = v3;
            v13 = *(v8 + 32);
            v14 = *(v8 + 24);
          }

          else
          {
            __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_62_cold_1(*(a1 + 40), v3);
            v13 = 0;
            v14 = 0;
          }

          if ([v13 areKeysAvailable:v14])
          {
            v15 = [v3 keyVector];
            v16 = [v13 keyVector];
            if ([v15 isEqualToKeyVector:v16])
            {
              v17 = v3;
            }

            else
            {
              if (v8)
              {
                v18 = *(v8 + 24);
              }

              else
              {
                v18 = 0;
              }

              v19 = v18;
              v17 = [v3 copyWithPropertyKeys:v19];

              if (v8)
              {
                v20 = *(v8 + 24);
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;
              v22 = [v13 copyWithPropertyKeys:v21];

              v13 = v22;
              a1 = v26;
            }

            v23 = [v17 isEqual:v13];

            v6 = v27;
            if (v23)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v17 = v3;
          }

          v24 = [v17 snapshot];
          [(CNContactChangesObserverProxy *)v8 setContactSnapshot:v24];

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_2;
          v29[3] = &unk_1E7412A60;
          v25 = *(a1 + 48);
          v30 = *(a1 + 56);
          v31 = v8;
          v17 = v17;
          v32 = v17;
          [v25 performBlock:v29];

LABEL_18:
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

void __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_2(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__27;
  v8 = __Block_byref_object_dispose__27;
  v9 = 0;
  v2 = a1[4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_3;
  v3[3] = &unk_1E7412358;
  v3[4] = a1[5];
  v3[5] = &v4;
  [v2 performBlock:v3];
  [v5[5] contactDidChange:a1[6]];
  _Block_object_dispose(&v4, 8);
}

+ (id)workQueue_createFetchersFromRegisteredObservers:(id)observers
{
  v54 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  array = [MEMORY[0x1E695DF70] array];
  v34 = observersCopy;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [observersCopy allKeys];
  v35 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v35)
  {
    v32 = *v48;
    do
    {
      v4 = 0;
      do
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v47 + 1) + 8 * v4);
        v37 = v4;
        v5 = [v34 objectsForKey:?];
        v6 = [MEMORY[0x1E695DFA8] set];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v8)
        {
          v10 = v8;
          v9 = 0;
          v11 = *v44;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v44 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v43 + 1) + 8 * i);
              if (v13)
              {
                v14 = *(v13 + 24);
                if (v14)
                {
                  [v6 addObjectsFromArray:v14];
                }

                v9 |= *(v13 + 8);
              }
            }

            v10 = [v7 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v10);
        }

        else
        {
          v9 = 0;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = array;
        v15 = [v38 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v15)
        {
          v19 = v15;
          v20 = *v40;
          while (2)
          {
            v21 = 0;
            do
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v38);
              }

              v22 = *(*(&v39 + 1) + 8 * v21);
              if (v22)
              {
                v23 = *(v22 + 24);
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              if ([v24 isEqual:v6])
              {
                if (v22)
                {
                  v25 = *(v22 + 8);

                  if ((v9 & 1) == v25)
                  {
                    v27 = *(v22 + 16);
                    goto LABEL_41;
                  }
                }

                else
                {

                  if ((v9 & 1) == 0)
                  {
                    v27 = 0;
LABEL_41:
                    v16 = v36;
                    v28 = [v27 setByAddingObject:v36];
                    [(CNContactChangesFetcher *)v22 setIdentifiers:v28];
                    v17 = v22;

                    if (!v22)
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_42;
                  }
                }
              }

              else
              {
              }

              ++v21;
            }

            while (v19 != v21);
            v26 = [v38 countByEnumeratingWithState:&v39 objects:v51 count:16];
            v19 = v26;
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v16 = v36;
LABEL_20:
        v17 = objc_alloc_init(CNContactChangesFetcher);
        v18 = [MEMORY[0x1E695DFD8] setWithObject:v16];
        [(CNContactChangesFetcher *)v17 setIdentifiers:v18];

        [(CNContactChangesObserverProxy *)v17 setKeysToFetch:v6];
        if (v17)
        {
          v17->_unify = v9 & 1;
        }

        [v38 addObject:v17];
LABEL_42:

        v4 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v35);
  }

  v29 = [array copy];

  return v29;
}

+ (CNContactChangesObserverProxy)createProxyForObserver:(void *)observer keysToFetch:
{
  v4 = a2;
  observerCopy = observer;
  objc_opt_self();
  v6 = objc_alloc_init(CNContactChangesObserverProxy);
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_observer, v4);
  }

  [(CNContactChangesObserverProxy *)v7 setKeysToFetch:observerCopy];

  return v7;
}

- (void)registerProxy:(void *)proxy identifier:
{
  v5 = a2;
  proxyCopy = proxy;
  if (self)
  {
    v7 = *(self + 16);
    OUTLINED_FUNCTION_0();
    v9 = 3221225472;
    v10 = __53__CNContactChangesNotifier_registerProxy_identifier___block_invoke;
    v11 = &unk_1E7412A60;
    selfCopy = self;
    v13 = v5;
    v14 = proxyCopy;
    [v7 performBlock:v8];
  }
}

- (void)removeProxiesForObserver:(void *)observer forContact:(void *)contact completionHandler:
{
  v7 = a2;
  observerCopy = observer;
  contactCopy = contact;
  if (self)
  {
    v10 = *(self + 16);
    OUTLINED_FUNCTION_2();
    v11[1] = 3221225472;
    v11[2] = __82__CNContactChangesNotifier_removeProxiesForObserver_forContact_completionHandler___block_invoke;
    v11[3] = &unk_1E7416648;
    v12 = observerCopy;
    selfCopy = self;
    v14 = v7;
    v15 = contactCopy;
    [v10 performBlock:v11];
  }
}

- (BOOL)resourceLock_removeProxiesForIdentifier:(void *)identifier passingTest:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = *(self + 56);
    identifierCopy = identifier;
    v8 = [v6 objectsForKey:v5];
    v9 = [v8 _cn_partition:identifierCopy];

    second = [v9 second];
    v11 = [second count];
    v12 = [v8 count];
    v13 = v11 == v12;
    v14 = v11 != v12;
    if (v13)
    {
      objc_opt_class();
      first = +[CNContactChangesNotifier os_log];
      if (os_log_type_enabled(first, OS_LOG_TYPE_DEBUG))
      {
        v25 = 134217984;
        v26 = [v8 count];
        _os_log_debug_impl(&dword_1954A0000, first, OS_LOG_TYPE_DEBUG, "No entries were removed (total: %lu)", &v25, 0xCu);
      }
    }

    else
    {
      v15 = [second count];
      v16 = *(self + 56);
      if (v15)
      {
        [v16 setObjects:second forKey:v5];
      }

      else
      {
        [v16 removeObjectsForKey:v5];
      }

      first = [v9 first];
      [first _cn_each:&__block_literal_global_45_0];
      objc_opt_class();
      v18 = +[CNContactChangesNotifier os_log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = [first count];
        if ([first count]== 1)
        {
          v21 = @"entry";
        }

        else
        {
          v21 = @"entries";
        }

        v22 = [second count];
        v23 = [second count];
        v25 = 134218754;
        v24 = @"entry";
        if (v23 != 1)
        {
          v24 = @"entries";
        }

        v26 = v20;
        v27 = 2112;
        v28 = v21;
        v29 = 2048;
        v30 = v22;
        v31 = 2112;
        v32 = v24;
        _os_log_debug_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEBUG, "Removing %lu %@, keeping %lu %@", &v25, 0x2Au);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __80__CNContactChangesNotifier_resourceLock_removeProxiesForIdentifier_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return objc_storeWeak((a2 + 16), 0);
  }

  return result;
}

- (void)timerDidEmitEvent:(id)event
{
  objc_opt_class();
  v4 = +[CNContactChangesNotifier os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_INFO, "Will remove entries without observers", buf, 2u);
  }

  [(CNContactChangesNotifier *)self removeProxiesForObserver:0 forContact:0 completionHandler:?];
  objc_opt_class();
  v5 = +[CNContactChangesNotifier os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Did remove entries without observers", v6, 2u);
  }
}

- (void)contactStoreDidChange:(id)change
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CNContactChangesNotifier_contactStoreDidChange___block_invoke;
  v4[3] = &unk_1E7412A88;
  v4[4] = self;
  [(CNScheduler *)workQueue performBlock:v4];
}

uint64_t __53__CNContactChangesNotifier_registerProxy_identifier___block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  [v2 addObject:v0[5] forKey:v0[6]];
  OUTLINED_FUNCTION_0();
  v6 = 3221225472;
  v7 = __53__CNContactChangesNotifier_registerProxy_identifier___block_invoke_2;
  v8 = &unk_1E7412A88;
  v9 = v0[4];
  return [v3 performBlock:v5 qualityOfService:2];
}

void __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke()
{
  OUTLINED_FUNCTION_6();
  if (v0)
  {
    v0 = v0[7];
  }

  v4 = v0;
  [v4 copy];
  OUTLINED_FUNCTION_5_2();
  v2 = *(v1 + 40);
  *(v1 + 40) = v3;
}

uint64_t __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_3()
{
  OUTLINED_FUNCTION_6();
  if (v0)
  {
    objc_loadWeakRetained((v0 + 16));
  }

  OUTLINED_FUNCTION_5_2();
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;

  return MEMORY[0x1EEE66BB8](v1, v3);
}

void __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_4(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27;
  v10 = __Block_byref_object_dispose__27;
  v11 = 0;
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  OUTLINED_FUNCTION_2();
  v5[1] = 3221225472;
  v5[2] = __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_5;
  v5[3] = &unk_1E7412358;
  v5[4] = a1[5];
  v5[5] = &v6;
  [v4 performBlock:v5];

  [v7[5] contactWithIdentifierWasDeleted:a1[6]];
  _Block_object_dispose(&v6, 8);
}

uint64_t __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_5()
{
  OUTLINED_FUNCTION_6();
  if (v0)
  {
    objc_loadWeakRetained((v0 + 16));
  }

  OUTLINED_FUNCTION_5_2();
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;

  return MEMORY[0x1EEE66BB8](v1, v3);
}

uint64_t __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[7];
  }

  return [v1 removeObjectsForKey:*(a1 + 40)];
}

- (void)registerObserver:(void *)a3 forContact:keysToFetch:completionHandler:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __86__CNContactChangesNotifier_registerObserver_forContact_keysToFetch_completionHandler___block_invoke_2;
  *(a2 + 24) = &unk_1E74142B8;
  *(a2 + 32) = a3;
  [v4 performBlock:a2];
}

- (uint64_t)registerObserver:(uint64_t)a1 forContact:(void *)a2 keysToFetch:(void *)a3 completionHandler:(void *)a4 .cold.2(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __86__CNContactChangesNotifier_registerObserver_forContact_keysToFetch_completionHandler___block_invoke;
  a2[3] = &unk_1E74142B8;
  a2[4] = a3;
  result = [v6 performBlock:a2];
  *a4 = a2[4];
  return result;
}

id __53__CNContactChangesNotifier_workQueue_updateObservers__block_invoke_62_cold_1(void *a1, void *a2)
{
  v3 = [0 identifier];
  [a1 addObject:v3];

  return a2;
}

@end