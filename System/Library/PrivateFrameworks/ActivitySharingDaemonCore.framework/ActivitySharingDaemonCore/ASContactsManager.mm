@interface ASContactsManager
- (ASContactsManager)initWithIsWatch:(BOOL)watch contactStorage:(id)storage;
- (NSSet)contacts;
- (NSSet)legacyContacts;
- (NSSet)placeholderContacts;
- (NSSet)secureCloudContacts;
- (id)_contactStoreContactWithIdentifier:(id)identifier;
- (id)_contactsToBeRemovedFromOldContacts:(id)contacts newContacts:(id)newContacts;
- (id)_findMatchingContactStoreContactForDestinations:(id)destinations;
- (id)_queue_allContacts;
- (id)_queue_contactsForCloudType:(unint64_t)type;
- (id)contactMatchingCriteriaBlock:(id)block;
- (id)contactWithDestinations:(id)destinations;
- (id)contactWithUUID:(id)d;
- (id)createContactWithDestinations:(id)destinations;
- (id)createContactWithDestinations:(id)destinations relationshipIdentifier:(id)identifier;
- (id)placeholderContactWithUUID:(id)d;
- (id)savePlaceholderContact:(id)contact;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)_persistContacts:(id)contacts;
- (void)_queue_notifyObservers;
- (void)_setContacts:(id)contacts waitForTransaction:(BOOL)transaction;
- (void)_waitForTransaction;
- (void)addObserver:(id)observer;
- (void)loadCachedContacts;
- (void)removeAllPlaceholderContacts;
- (void)removeObserver:(id)observer;
- (void)removePlaceholderContactWithToken:(id)token;
- (void)saveContact:(id)contact;
- (void)setContactsUsingTransaction:(id)transaction;
@end

@implementation ASContactsManager

- (ASContactsManager)initWithIsWatch:(BOOL)watch contactStorage:(id)storage
{
  storageCopy = storage;
  v27.receiver = self;
  v27.super_class = ASContactsManager;
  v7 = [(ASContactsManager *)&v27 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v9 = tcc_identity_create();
    [v8 setAssumedIdentity:v9];

    v10 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];
    contactStore = v7->_contactStore;
    v7->_contactStore = v10;

    objc_storeStrong(&v7->_contactStorage, storage);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contactsByUUID = v7->_contactsByUUID;
    v7->_contactsByUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    placeholderContactsByUUID = v7->_placeholderContactsByUUID;
    v7->_placeholderContactsByUUID = dictionary2;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v18 = HKCreateConcurrentDispatchQueue();
    contactsQueue = v7->_contactsQueue;
    v7->_contactsQueue = v18;

    v20 = HKCreateConcurrentDispatchQueue();
    observerQueue = v7->_observerQueue;
    v7->_observerQueue = v20;

    v22 = HKCreateSerialDispatchQueue();
    persistQueue = v7->_persistQueue;
    v7->_persistQueue = v22;

    v24 = dispatch_group_create();
    contactsTransactionBarrier = v7->_contactsTransactionBarrier;
    v7->_contactsTransactionBarrier = v24;
  }

  return v7;
}

- (void)loadCachedContacts
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ContactsManager loading cached contacts", buf, 2u);
  }

  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASContactsManager_loadCachedContacts__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_barrier_sync(contactsQueue, block);
}

void __39__ASContactsManager_loadCachedContacts__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) count];
  v3 = MEMORY[0x277CE9008];
  if (v2)
  {
    ASLoggingInitialize();
    v4 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __39__ASContactsManager_loadCachedContacts__block_invoke_cold_1(v4);
    }

    [*(*(a1 + 32) + 24) removeAllObjects];
  }

  ASLoggingInitialize();
  v5 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ContactsManager deleting legacy contacts", buf, 2u);
  }

  [*(*(a1 + 32) + 16) deleteDeprecatedContacts];
  v6 = [*(*(a1 + 32) + 16) readContactsFromDisk];
  v7 = [v6 hk_filter:&__block_literal_global_3];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v31 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = *(*(a1 + 32) + 24);
        v16 = [v13 UUID];
        [v15 setObject:v13 forKeyedSubscript:v16];

        v17 = *(a1 + 32);
        v18 = [v13 linkedContactStoreIdentifier];
        v19 = [v17 _contactStoreContactWithIdentifier:v18];

        if (v19)
        {
          v20 = ASShortNameForContactStoreContact();
          [v13 setShortName:v20];

          v21 = ASFullNameForContactStoreContact();
          [v13 setFullName:v21];
        }

        ASLoggingInitialize();
        v22 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          v23 = v22;
          [v13 UUID];
          v25 = v24 = v3;
          *buf = 138543618;
          v37 = v25;
          v38 = 2112;
          v39 = v13;
          _os_log_debug_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEBUG, "ContactsManager initialized cached contact: %{public}@ - %@", buf, 0x16u);

          v3 = v24;
          v8 = v31;
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v10);
  }

  ASLoggingInitialize();
  v26 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(*(a1 + 32) + 24);
    v28 = v26;
    v29 = [v27 count];
    *buf = 134217984;
    v37 = v29;
    _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "ContactsManager loaded %lu cached contacts", buf, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ASContactsManager_loadCachedContacts__block_invoke_326(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 shouldRemove])
  {
    ASLoggingInitialize();
    v3 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Found contact marked for removal %@", &v7, 0xCu);
    }
  }

  v4 = [v2 shouldRemove];

  v5 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ASContactsManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASContactsManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (NSSet)contacts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  contactsQueue = self->_contactsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASContactsManager_contacts__block_invoke;
  v5[3] = &unk_278C4BC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(contactsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__ASContactsManager_contacts__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _queue_allContacts];
  if (ASSecureCloudEnabled())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v8 copyItems:1];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = [v8 hk_filter:&__block_literal_global_330];
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v4 copyItems:1];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (NSSet)legacyContacts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  contactsQueue = self->_contactsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__ASContactsManager_legacyContacts__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(contactsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__ASContactsManager_legacyContacts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_contactsForCloudType:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSSet)secureCloudContacts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  contactsQueue = self->_contactsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASContactsManager_secureCloudContacts__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(contactsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__ASContactsManager_secureCloudContacts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_contactsForCloudType:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_queue_contactsForCloudType:(unint64_t)type
{
  _queue_allContacts = [(ASContactsManager *)self _queue_allContacts];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ASContactsManager__queue_contactsForCloudType___block_invoke;
  v8[3] = &__block_descriptor_40_e19_B16__0__ASContact_8l;
  v8[4] = type;
  v5 = [_queue_allContacts hk_filter:v8];
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v5 copyItems:1];

  return v6;
}

- (NSSet)placeholderContacts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = [MEMORY[0x277CBEB98] set];
  contactsQueue = self->_contactsQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASContactsManager_placeholderContacts__block_invoke;
  v6[3] = &unk_278C4BC10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(contactsQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__ASContactsManager_placeholderContacts__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = _TopPlaceholderContactInPlaceholderArray(*(*(&v12 + 1) + 8 * v6));
        if (v7)
        {
          v8 = [*(*(*(a1 + 40) + 8) + 40) setByAddingObject:v7];
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)contactWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASContactsManager_contactWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(contactsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__ASContactsManager_contactWithUUID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)placeholderContactWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASContactsManager_placeholderContactWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(contactsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__ASContactsManager_placeholderContactWithUUID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = _TopPlaceholderContactInPlaceholderArray(v5);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)contactMatchingCriteriaBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASContactsManager_contactMatchingCriteriaBlock___block_invoke;
  block[3] = &unk_278C4BFF8;
  block[4] = self;
  v6 = blockCopy;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(contactsQueue, block);
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__ASContactsManager_contactMatchingCriteriaBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1[4] + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ((*(a1[5] + 16))())
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
}

- (id)contactWithDestinations:(id)destinations
{
  destinationsCopy = destinations;
  contacts = [(ASContactsManager *)self contacts];
  v6 = ASFindContactWithDestinationsInContacts(destinationsCopy, contacts);

  return v6;
}

- (id)createContactWithDestinations:(id)destinations
{
  destinationsCopy = destinations;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEBUG))
  {
    [ASContactsManager createContactWithDestinations:];
  }

  v6 = [(ASContactsManager *)self _findMatchingContactStoreContactForDestinations:destinationsCopy];
  v7 = _DestinationsForContactStoreContact(v6);
  v8 = ASSanitizedContactDestinations();
  v9 = [v8 setByAddingObjectsFromSet:v7];

  v10 = objc_alloc_init(MEMORY[0x277CE90E8]);
  identifier = [v6 identifier];
  [v10 setLinkedContactStoreIdentifier:identifier];

  [v10 setDestinations:v9];
  v12 = ASFullNameForContactStoreContact();
  [v10 setFullName:v12];

  v13 = ASShortNameForContactStoreContact();
  [v10 setShortName:v13];

  ASLoggingInitialize();
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    [ASContactsManager createContactWithDestinations:];
  }

  return v10;
}

- (void)saveContact:(id)contact
{
  v21 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  uUID = [contactCopy UUID];

  if (uUID)
  {
    [(ASContactsManager *)self _waitForTransaction];
    ASLoggingInitialize();
    v6 = MEMORY[0x277CE9008];
    v7 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      uUID2 = [contactCopy UUID];
      *buf = 138543618;
      v18 = uUID2;
      v19 = 2112;
      v20 = contactCopy;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ContactsManager saving contact: %{public}@ - %@", buf, 0x16u);
    }

    ASLoggingInitialize();
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      relationshipStorage = [contactCopy relationshipStorage];
      *buf = 138412290;
      v18 = relationshipStorage;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "ContactsManager saving contact with storage %@", buf, 0xCu);
    }

    contactsQueue = self->_contactsQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__ASContactsManager_saveContact___block_invoke;
    v15[3] = &unk_278C4B250;
    v15[4] = self;
    v16 = contactCopy;
    dispatch_barrier_sync(contactsQueue, v15);
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      [ASContactsManager saveContact:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __33__ASContactsManager_saveContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(*(a1 + 32) + 24);
  v4 = [*(a1 + 40) UUID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  [*(a1 + 32) _queue_notifyObservers];
  v5 = [*(a1 + 32) _queue_allContacts];
  [*(a1 + 32) _persistContacts:v5];
}

- (void)setContactsUsingTransaction:(id)transaction
{
  transactionCopy = transaction;
  [(ASContactsManager *)self _beginTransaction];
  v5 = transactionCopy[2](transactionCopy);

  [(ASContactsManager *)self _setContacts:v5 waitForTransaction:0];
  [(ASContactsManager *)self _endTransaction];
}

- (id)savePlaceholderContact:(id)contact
{
  v26 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  uUID = [contactCopy UUID];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE9008];
  v8 = *MEMORY[0x277CE9008];
  if (uUID)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = uUID2;
      v22 = 2114;
      v23 = uUID;
      v24 = 2112;
      v25 = contactCopy;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "ContactsManager saving placeholder contact (token=%{public}@): %{public}@ - %@", buf, 0x20u);
    }

    contactsQueue = self->_contactsQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__ASContactsManager_savePlaceholderContact___block_invoke;
    v15[3] = &unk_278C4BB48;
    v10 = uUID2;
    v16 = v10;
    v17 = contactCopy;
    selfCopy = self;
    v19 = uUID;
    dispatch_barrier_sync(contactsQueue, v15);
    v11 = v19;
    v12 = v10;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ASContactsManager savePlaceholderContact:];
  }

  v13 = *MEMORY[0x277D85DE8];

  return uUID2;
}

void __44__ASContactsManager_savePlaceholderContact___block_invoke(uint64_t a1)
{
  v8 = objc_opt_new();
  [v8 setToken:*(a1 + 32)];
  v2 = [*(a1 + 40) copy];
  [v8 setContact:v2];

  v3 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:*(a1 + 56)];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 arrayByAddingObject:v8];

  [*(*(a1 + 48) + 32) setObject:v7 forKeyedSubscript:*(a1 + 56)];
  [*(a1 + 48) _queue_notifyObservers];
}

- (void)removePlaceholderContactWithToken:(id)token
{
  v13 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = tokenCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ContactsManager removing placeholder contact with token %{public}@", buf, 0xCu);
  }

  contactsQueue = self->_contactsQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke;
  v9[3] = &unk_278C4B250;
  v9[4] = self;
  v10 = tokenCopy;
  v7 = tokenCopy;
  dispatch_barrier_sync(contactsQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke_2;
  v29[3] = &unk_278C4C020;
  v30 = v2;
  v31 = &v32;
  [v4 enumerateKeysAndObjectsUsingBlock:v29];
  if (v33[5])
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v33[5];
      v7 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v6];
      *buf = 138543618;
      v40 = v6;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ContactsManager found placeholder contact to remove %{public}@ - %@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 32) objectForKeyedSubscript:v33[5]];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v8 = v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v38 count:16];
    if (v9)
    {
      v10 = *v26;
      v11 = MEMORY[0x277CBEBF8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 token];
          v15 = [v14 isEqual:*v3];

          if ((v15 & 1) == 0)
          {
            v16 = [v11 arrayByAddingObject:v13];

            v11 = v16;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v38 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    [*(*(a1 + 32) + 32) setObject:v11 forKeyedSubscript:v33[5]];
    [*(a1 + 32) _queue_notifyObservers];
  }

  else
  {
    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke_cold_1(v3, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  _Block_object_dispose(&v32, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) token];
        v15 = [v14 isEqual:*(a1 + 32)];

        if (v15)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPlaceholderContacts
{
  v11 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    placeholderContactsByUUID = self->_placeholderContactsByUUID;
    v5 = v3;
    *buf = 134217984;
    v10 = [(NSMutableDictionary *)placeholderContactsByUUID count];
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ContactsManager removing all placeholder contacts (%lu placeholder contacts)", buf, 0xCu);
  }

  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ASContactsManager_removeAllPlaceholderContacts__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_barrier_sync(contactsQueue, block);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__ASContactsManager_removeAllPlaceholderContacts__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _queue_notifyObservers];
}

- (void)_setContacts:(id)contacts waitForTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v32 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = contactsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        uUID = [v13 UUID];

        if (!uUID)
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
          {
            [ASContactsManager _setContacts:waitForTransaction:];
          }

          goto LABEL_17;
        }

        v15 = [v13 copy];
        uUID2 = [v13 UUID];
        [dictionary setObject:v15 forKeyedSubscript:uUID2];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (transactionCopy)
  {
    [(ASContactsManager *)self _waitForTransaction];
  }

  ASLoggingInitialize();
  v17 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [dictionary count];
    *buf = 134217984;
    v30 = v19;
    _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "ContactsManager saving %lu contacts", buf, 0xCu);
  }

  contactsQueue = self->_contactsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASContactsManager__setContacts_waitForTransaction___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = self;
  v23 = dictionary;
  v24 = v8;
  dispatch_barrier_sync(contactsQueue, block);

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

void __53__ASContactsManager__setContacts_waitForTransaction___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _contactsToBeRemovedFromOldContacts:*(*(a1 + 32) + 24) newContacts:*(a1 + 40)];
  if ([v2 count])
  {
    ASLoggingInitialize();
    v3 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ContactsManager marking contacts to remove %@", &v6, 0xCu);
    }

    [*(a1 + 32) _persistContacts:v2];
  }

  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) _queue_notifyObservers];
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) _queue_allContacts];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) _persistContacts:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_contactsToBeRemovedFromOldContacts:(id)contacts newContacts:(id)newContacts
{
  v25 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  newContactsCopy = newContacts;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = contactsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        allKeys = [newContactsCopy allKeys];
        v15 = [allKeys containsObject:v13];

        if ((v15 & 1) == 0)
        {
          v16 = [v8 objectForKeyedSubscript:v13];
          [v16 setShouldRemove:1];
          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_beginTransaction
{
  [(ASContactsManager *)self _waitForTransaction];
  dispatch_group_enter(self->_contactsTransactionBarrier);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ContactsManager beginning transaction", v4, 2u);
  }
}

- (void)_endTransaction
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ContactsManager ending transaction", v4, 2u);
  }

  dispatch_group_leave(self->_contactsTransactionBarrier);
}

- (void)_waitForTransaction
{
  contactsTransactionBarrier = self->_contactsTransactionBarrier;
  v3 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(contactsTransactionBarrier, v3))
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      [(ASContactsManager *)v4 _waitForTransaction];
    }
  }
}

- (id)_queue_allContacts
{
  dispatch_assert_queue_V2(self->_contactsQueue);
  v3 = MEMORY[0x277CBEB98];
  allValues = [(NSMutableDictionary *)self->_contactsByUUID allValues];
  v5 = [v3 setWithArray:allValues];

  return v5;
}

- (void)_persistContacts:(id)contacts
{
  contactsCopy = contacts;
  dispatch_assert_queue_not_V2(self->_persistQueue);
  persistQueue = self->_persistQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASContactsManager__persistContacts___block_invoke;
  v7[3] = &unk_278C4B250;
  v8 = contactsCopy;
  selfCopy = self;
  v6 = contactsCopy;
  dispatch_sync(persistQueue, v7);
}

uint64_t __38__ASContactsManager__persistContacts___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ContactsManager persisting %lu contacts to disk", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 16);
  if (*(a1 + 32))
  {
    result = [v5 writeContactsToDisk:?];
  }

  else
  {
    result = [v5 deleteContactsFromDisk];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_notifyObservers
{
  dispatch_assert_queue_V2(self->_contactsQueue);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ASContactsManager__queue_notifyObservers__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(observerQueue, block);
}

void __43__ASContactsManager__queue_notifyObservers__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = v2;
    *buf = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ContactsManager notifying %lu observer(s) of contacts update", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 40);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) contactsManagerDidUpdateContacts:{*(a1 + 32), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_findMatchingContactStoreContactForDestinations:(id)destinations
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = destinations;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v22 = *v26;
    v6 = *MEMORY[0x277CBCFC0];
    v7 = *MEMORY[0x277CBD098];
    *&v4 = 138412290;
    v20 = v4;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = ASContactStorePredicateForDestination();
        contactStore = self->_contactStore;
        v12 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
        v31[0] = v12;
        v31[1] = v6;
        v31[2] = v7;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
        v24 = 0;
        v14 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:v13 error:&v24];
        v15 = v24;

        if (v15)
        {
          ASLoggingInitialize();
          v16 = *MEMORY[0x277CE9008];
          if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v30 = v10;
            _os_log_error_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_ERROR, "ContactsManager error looking for contacts matching predicate: %@", buf, 0xCu);
          }
        }

        if ([v14 count])
        {
          if ([v14 count] >= 2)
          {
            ASLoggingInitialize();
            if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
            {
              [ASContactsManager _findMatchingContactStoreContactForDestinations:];
            }
          }

          firstObject = [v14 firstObject];

          goto LABEL_17;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  firstObject = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_contactStoreContactWithIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    contactStore = self->_contactStore;
    v4 = MEMORY[0x277CBDA78];
    identifierCopy = identifier;
    v6 = [v4 descriptorForRequiredKeysForStyle:0];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifierCopy keysToFetch:v7 error:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)createContactWithDestinations:(id)destinations relationshipIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  identifierCopy = identifier;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE9008];
  v9 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = destinationsCopy;
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "ContactsManager creating new contact with destinations: %@, identifier %@", &v25, 0x16u);
  }

  v10 = [(ASContactsManager *)self _findMatchingContactStoreContactForDestinations:destinationsCopy];
  v11 = _DestinationsForContactStoreContact(v10);
  v12 = ASSanitizedContactDestinations();
  v13 = [v12 setByAddingObjectsFromSet:v11];

  v14 = [objc_alloc(MEMORY[0x277CE9118]) initWithIdentifier:identifierCopy cloudType:0];
  v15 = objc_alloc(MEMORY[0x277CE9118]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v15 initWithIdentifier:uUID cloudType:0];

  v18 = [objc_alloc(MEMORY[0x277CE90E8]) initWithRelationship:v14 remoteRelationship:v17];
  identifier = [v10 identifier];
  [v18 setLinkedContactStoreIdentifier:identifier];

  [v18 setDestinations:v13];
  v20 = ASFullNameForContactStoreContact();
  [v18 setFullName:v20];

  v21 = ASShortNameForContactStoreContact();
  [v18 setShortName:v21];

  ASLoggingInitialize();
  v22 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v18;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "ContactsManager resulting contact: %@", &v25, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)createContactWithDestinations:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEBUG, "ContactsManager creating new contact with destinations: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)createContactWithDestinations:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEBUG, "ContactsManager resulting contact: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveContact:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "ContactsManager error saving contact, no UUID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)savePlaceholderContact:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "ContactsManager error saving placeholder contact, no UUID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__ASContactsManager_removePlaceholderContactWithToken___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "ContactsManager couldn't find contact with token %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setContacts:waitForTransaction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "ContactsManager error setting contact, no UUID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_findMatchingContactStoreContactForDestinations:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "ContactsManager multiple contacts matched destination: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end