@interface CNHealthStoreManager
+ (BOOL)shouldShowEmergencyContacts;
+ (id)descriptorForRequiredKeys;
+ (id)emergencyContactMatchingContact:(id)contact;
+ (id)identifiersForContactMatchingEmergencyContacts:(id)contacts contactStore:(id)store;
+ (id)log;
- (CNHealthStoreManager)initWithEnvironment:(id)environment healthStore:(id)store medicalIDStore:(id)dStore;
- (HKHealthStore)healthStore;
- (HKMedicalIDStore)medicalIDStore;
- (id)createMedicalIDFromContact:(id)contact;
- (id)nts_lazyHealthStore;
- (id)nts_lazyMedicalIDStore;
- (id)registerMedicalIDDataHandler:(id)handler;
- (void)dealloc;
- (void)notifyHandlersWithMedicalIDData:(id)data;
- (void)startListeningForChanges;
- (void)unregisterHandlerForToken:(id)token;
- (void)updateAndDispatchMedicalIDData;
@end

@implementation CNHealthStoreManager

- (void)startListeningForChanges
{
  [(CNHealthStoreManager *)self setIsListeningToChanges:1];
  objc_initWeak(&location, self);
  workQueue = [(CNHealthStoreManager *)self workQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__CNHealthStoreManager_startListeningForChanges__block_invoke;
  v4[3] = &unk_1E74E6D30;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [workQueue performBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__CNHealthStoreManager_startListeningForChanges__block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v2 = getkHKMedicalIDDidChangeNotificationSymbolLoc_ptr;
  v16 = getkHKMedicalIDDidChangeNotificationSymbolLoc_ptr;
  if (!getkHKMedicalIDDidChangeNotificationSymbolLoc_ptr)
  {
    v11[1] = MEMORY[0x1E69E9820];
    v11[2] = 3221225472;
    v11[3] = __getkHKMedicalIDDidChangeNotificationSymbolLoc_block_invoke;
    v11[4] = &unk_1E74E7518;
    v12 = &v13;
    v3 = HealthKitLibrary();
    v14[3] = dlsym(v3, "kHKMedicalIDDidChangeNotification");
    getkHKMedicalIDDidChangeNotificationSymbolLoc_ptr = *(v12[1] + 24);
    v2 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v2)
  {
    v4 = *v2;
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__CNHealthStoreManager_startListeningForChanges__block_invoke_2;
    handler[3] = &unk_1E74E40C0;
    objc_copyWeak(v11, (a1 + 40));
    notify_register_dispatch(v4, (v5 + 8), v6, handler);

    objc_destroyWeak(v11);
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"char *getkHKMedicalIDDidChangeNotification(void)"];
    [v8 handleFailureInFunction:v9 file:@"ABHealthKit.h" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

+ (BOOL)shouldShowEmergencyContacts
{
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v4 = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if (![bundleIdentifier isEqualToString:@"com.apple.ContesterSwiftUI"])
    {
      isMedicalIDAvailable = 0;
      goto LABEL_14;
    }

    v4 = 1;
  }

  if (![getHKHealthStoreClass() isHealthDataAvailable])
  {
    isMedicalIDAvailable = 0;
    if ((v4 & 1) == 0)
    {
      return isMedicalIDAvailable;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getHKHealthChecklistUtilitiesClass_softClass;
  v14 = getHKHealthChecklistUtilitiesClass_softClass;
  if (!getHKHealthChecklistUtilitiesClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getHKHealthChecklistUtilitiesClass_block_invoke;
    v10[3] = &unk_1E74E7518;
    v10[4] = &v11;
    __getHKHealthChecklistUtilitiesClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  shared = [v5 shared];
  isMedicalIDAvailable = [shared isMedicalIDAvailable];

  if (v4)
  {
LABEL_14:
  }

  return isMedicalIDAvailable;
}

- (void)updateAndDispatchMedicalIDData
{
  workQueue = [(CNHealthStoreManager *)self workQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNHealthStoreManager_updateAndDispatchMedicalIDData__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [workQueue performBlock:v4];
}

void __54__CNHealthStoreManager_updateAndDispatchMedicalIDData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) medicalIDStore];
  v3 = [v2 medicalIDSetUpStatus];

  if (v3 == 1)
  {
    v4 = *(a1 + 32);

    [v4 notifyHandlersWithMedicalIDData:0];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v5 = [*(a1 + 32) medicalIDStore];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__CNHealthStoreManager_updateAndDispatchMedicalIDData__block_invoke_2;
    v6[3] = &unk_1E74E4070;
    objc_copyWeak(&v7, &location);
    [v5 fetchMedicalIDDataWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (HKMedicalIDStore)medicalIDStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyMedicalIDStore
{
  medicalIDStore = self->_medicalIDStore;
  if (!medicalIDStore)
  {
    nts_lazyHealthStore = [(CNHealthStoreManager *)self nts_lazyHealthStore];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v5 = getHKMedicalIDStoreClass_softClass;
    v14 = getHKMedicalIDStoreClass_softClass;
    if (!getHKMedicalIDStoreClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getHKMedicalIDStoreClass_block_invoke;
      v10[3] = &unk_1E74E7518;
      v10[4] = &v11;
      __getHKMedicalIDStoreClass_block_invoke(v10);
      v5 = v12[3];
    }

    v6 = v5;
    _Block_object_dispose(&v11, 8);
    v7 = [[v5 alloc] initWithHealthStore:self->_healthStore];
    v8 = self->_medicalIDStore;
    self->_medicalIDStore = v7;

    medicalIDStore = self->_medicalIDStore;
  }

  return medicalIDStore;
}

- (id)nts_lazyHealthStore
{
  healthStore = self->_healthStore;
  if (!healthStore)
  {
    v4 = objc_alloc_init(getHKHealthStoreClass());
    v5 = self->_healthStore;
    self->_healthStore = v4;

    healthStore = self->_healthStore;
  }

  return healthStore;
}

- (id)createMedicalIDFromContact:(id)contact
{
  contactCopy = contact;
  healthStore = [(CNHealthStoreManager *)self healthStore];
  createMedicalIDData = [healthStore createMedicalIDData];

  [createMedicalIDData loadDataFromCNContact:contactCopy];

  return createMedicalIDData;
}

void __48__CNHealthStoreManager_startListeningForChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAndDispatchMedicalIDData];
}

- (void)notifyHandlersWithMedicalIDData:(id)data
{
  dataCopy = data;
  workQueue = [(CNHealthStoreManager *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CNHealthStoreManager_notifyHandlersWithMedicalIDData___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  [workQueue performBlock:v7];
}

void __56__CNHealthStoreManager_notifyHandlersWithMedicalIDData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsFetching:{objc_msgSend(*(a1 + 32), "isListeningToChanges") ^ 1}];
  [*(a1 + 32) setMedicalIDData:*(a1 + 40)];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32016;
  v11 = __Block_byref_object_dispose__32017;
  v12 = 0;
  v2 = [*(a1 + 32) stateLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CNHealthStoreManager_notifyHandlersWithMedicalIDData___block_invoke_321;
  v6[3] = &unk_1E74E56F0;
  v6[4] = *(a1 + 32);
  v6[5] = &v7;
  [v2 performBlock:v6];

  v3 = v8[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CNHealthStoreManager_notifyHandlersWithMedicalIDData___block_invoke_2;
  v4[3] = &unk_1E74E4098;
  v5 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  _Block_object_dispose(&v7, 8);
}

void __56__CNHealthStoreManager_notifyHandlersWithMedicalIDData___block_invoke_321(uint64_t a1)
{
  v5 = [*(a1 + 32) medicalIDDataHandlers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__CNHealthStoreManager_updateAndDispatchMedicalIDData__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained notifyHandlersWithMedicalIDData:v5];
  }

  else
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch Medical ID: %@", &v10, 0xCu);
    }
  }
}

- (void)unregisterHandlerForToken:(id)token
{
  tokenCopy = token;
  stateLock = [(CNHealthStoreManager *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNHealthStoreManager_unregisterHandlerForToken___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [stateLock performBlock:v7];
}

void __50__CNHealthStoreManager_unregisterHandlerForToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) medicalIDDataHandlers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (id)registerMedicalIDDataHandler:(id)handler
{
  handlerCopy = handler;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_initWeak(&location, self);
  workQueue = [(CNHealthStoreManager *)self workQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CNHealthStoreManager_registerMedicalIDDataHandler___block_invoke;
  v12[3] = &unk_1E74E4048;
  objc_copyWeak(&v15, &location);
  v7 = uUID;
  v13 = v7;
  v8 = handlerCopy;
  v14 = v8;
  [workQueue performBlock:v12];

  v9 = v14;
  v10 = v7;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __53__CNHealthStoreManager_registerMedicalIDDataHandler___block_invoke(id *a1)
{
  if (!+[CNHealthStoreManager shouldShowEmergencyContacts])
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CNHealthStoreManager_registerMedicalIDDataHandler___block_invoke_2;
  v7[3] = &unk_1E74E6650;
  v7[4] = WeakRetained;
  v8 = a1[4];
  v9 = a1[5];
  [v3 performBlock:v7];

  v4 = [WeakRetained medicalIDData];
  if (v4)
  {

LABEL_5:
    v5 = a1[5];
    v6 = [WeakRetained medicalIDData];
    v5[2](v5, v6, a1[4]);

    goto LABEL_6;
  }

  if (([WeakRetained needsFetching] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([WeakRetained needsFetching])
  {
    [WeakRetained updateAndDispatchMedicalIDData];
  }
}

void __53__CNHealthStoreManager_registerMedicalIDDataHandler___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 48) copy];
  v2 = _Block_copy(v4);
  v3 = [*(a1 + 32) medicalIDDataHandlers];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (HKHealthStore)healthStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_healthNotificationToken);
  v3.receiver = self;
  v3.super_class = CNHealthStoreManager;
  [(CNHealthStoreManager *)&v3 dealloc];
}

- (CNHealthStoreManager)initWithEnvironment:(id)environment healthStore:(id)store medicalIDStore:(id)dStore
{
  environmentCopy = environment;
  storeCopy = store;
  dStoreCopy = dStore;
  v23.receiver = self;
  v23.super_class = CNHealthStoreManager;
  v12 = [(CNHealthStoreManager *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, environment);
    objc_storeStrong(&v13->_healthStore, store);
    objc_storeStrong(&v13->_medicalIDStore, dStore);
    defaultSchedulerProvider = [environmentCopy defaultSchedulerProvider];
    v15 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.Contacts.CNHealthStoreManager.workQueue"];
    workQueue = v13->_workQueue;
    v13->_workQueue = v15;

    v13->_needsFetching = 1;
    defaultSchedulerProvider2 = [environmentCopy defaultSchedulerProvider];
    v18 = [defaultSchedulerProvider2 newSynchronousSerialSchedulerWithName:@"com.apple.Contacts.CNHealthStoreManager.stateLock"];
    stateLock = v13->_stateLock;
    v13->_stateLock = v18;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    medicalIDDataHandlers = v13->_medicalIDDataHandlers;
    v13->_medicalIDDataHandlers = dictionary;
  }

  return v13;
}

+ (id)identifiersForContactMatchingEmergencyContacts:(id)contacts contactStore:(id)store
{
  v30 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  storeCopy = store;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = contactsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = *MEMORY[0x1E695C258];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        nameContactIdentifier = [v13 nameContactIdentifier];

        if (nameContactIdentifier)
        {
          nameContactIdentifier2 = [v13 nameContactIdentifier];
          v28 = v11;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
          v17 = [storeCopy unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:v16 error:0];

          allLinkedIdentifiers = [v17 allLinkedIdentifiers];
          [array addObjectsFromArray:allLinkedIdentifiers];

          nameContactIdentifier3 = [v13 nameContactIdentifier];
          LOBYTE(v16) = [array containsObject:nameContactIdentifier3];

          if ((v16 & 1) == 0)
          {
            nameContactIdentifier4 = [v13 nameContactIdentifier];
            [array addObject:nameContactIdentifier4];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = [array copy];

  return v21;
}

+ (id)emergencyContactMatchingContact:(id)contact
{
  allLinkedIdentifiers = [contact allLinkedIdentifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CNHealthStoreManager_emergencyContactMatchingContact___block_invoke;
  v7[3] = &unk_1E74E4020;
  v8 = allLinkedIdentifiers;
  v4 = allLinkedIdentifiers;
  v5 = [v7 copy];

  return v5;
}

uint64_t __56__CNHealthStoreManager_emergencyContactMatchingContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameContactIdentifier];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 nameContactIdentifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_32044 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_32044, &__block_literal_global_299);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_32045;

  return v3;
}

void __49__CNHealthStoreManager_descriptorForRequiredKeys__block_invoke()
{
  v0 = MEMORY[0x1E695CD58];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v1 = get_HKMedicalIDDataClass_softClass;
  v11 = get_HKMedicalIDDataClass_softClass;
  if (!get_HKMedicalIDDataClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __get_HKMedicalIDDataClass_block_invoke;
    v7[3] = &unk_1E74E7518;
    v7[4] = &v8;
    __get_HKMedicalIDDataClass_block_invoke(v7);
    v1 = v9[3];
  }

  v2 = v1;
  _Block_object_dispose(&v8, 8);
  v3 = [v1 contactKeysToLoadForMedicalID];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNHealthStoreManager descriptorForRequiredKeys]_block_invoke"];
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:v4];
  v6 = descriptorForRequiredKeys_cn_once_object_2_32045;
  descriptorForRequiredKeys_cn_once_object_2_32045 = v5;
}

+ (id)log
{
  if (log_cn_once_token_1_32048 != -1)
  {
    dispatch_once(&log_cn_once_token_1_32048, &__block_literal_global_32049);
  }

  v3 = log_cn_once_object_1_32050;

  return v3;
}

uint64_t __27__CNHealthStoreManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNHealthStoreManager");
  v1 = log_cn_once_object_1_32050;
  log_cn_once_object_1_32050 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end