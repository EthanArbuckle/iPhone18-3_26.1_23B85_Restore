@interface ASRelationshipFinalizationStore
- (ASRelationshipFinalizationStore)initWithCloudType:(unint64_t)a3 contactsManager:(id)a4 clientQueue:(id)a5;
- (id)_placeholderForContactUUID:(id)a3;
- (id)allFinalizedFriendUUIDs;
- (void)_updatePlaceholder:(id)a3 contactUUID:(id)a4;
- (void)addFinalizedFriendUUIDs:(id)a3;
- (void)insertPlaceholderForEventTypes:(id)a3 contactUUID:(id)a4;
- (void)performBlockWaitingOnInviteFinalizationForContactUUID:(id)a3 block:(id)a4;
- (void)removeAllFinalizedFriendUUIDs;
- (void)removePlaceholderWithContactUUID:(id)a3 shouldNotify:(BOOL)a4;
@end

@implementation ASRelationshipFinalizationStore

- (ASRelationshipFinalizationStore)initWithCloudType:(unint64_t)a3 contactsManager:(id)a4 clientQueue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ASRelationshipFinalizationStore;
  v11 = [(ASRelationshipFinalizationStore *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientQueue, a5);
    v12->_cloudType = a3;
    objc_storeStrong(&v12->_contactsManager, a4);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finalizedFriendUUIDs = v12->_finalizedFriendUUIDs;
    v12->_finalizedFriendUUIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    placeholderFriendshipFinalizedTokens = v12->_placeholderFriendshipFinalizedTokens;
    v12->_placeholderFriendshipFinalizedTokens = v15;

    v12->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (void)insertPlaceholderForEventTypes:(id)a3 contactUUID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASRelationshipFinalizationStore *)self _placeholderForContactUUID:v7];
  v9 = MEMORY[0x277CE9008];
  if (v8)
  {
    ASLoggingInitialize();
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v8 token];
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "RelationshipManager found existing placeholder began token for this contact: %@", buf, 0xCu);
    }

    ASLoggingInitialize();
    v13 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "RelationshipManager removing placeholder contact to avoid orphaning the token", buf, 2u);
    }

    v14 = [v8 token];
    ASRemovePlaceholderForToken(v14, self->_contactsManager);
  }

  v15 = ASContactPreferringPlaceholderForUUID(v7, self->_contactsManager);
  ASLoggingInitialize();
  v16 = *v9;
  if (v15)
  {
    v29 = v8;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "RelationshipManager inserting placeholder contact: %@", buf, 0xCu);
    }

    v30 = v7;
    v17 = [v15 relationshipStorage];
    v18 = [v17 relationshipForCloudType:self->_cloudType];
    v19 = [v17 remoteRelationshipForCloudType:self->_cloudType];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v6;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          [v18 insertEventWithType:{objc_msgSend(v25, "integerValue")}];
          [v19 insertEventWithType:{objc_msgSend(v25, "integerValue")}];
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v22);
    }

    [v17 setLegacyRelationship:v18];
    [v17 setLegacyRemoteRelationship:v19];
    [v15 setRelationshipStorage:v17];
    v26 = [(ASContactsManager *)self->_contactsManager savePlaceholderContact:v15];
    v27 = [[ASRelationshipBeganPlaceholder alloc] initWithToken:v26];
    v7 = v30;
    [(ASRelationshipFinalizationStore *)self _updatePlaceholder:v27 contactUUID:v30];

    v6 = v31;
    v8 = v29;
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [ASRelationshipFinalizationStore insertPlaceholderForEventTypes:v7 contactUUID:v16];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removePlaceholderWithContactUUID:(id)a3 shouldNotify:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ASRelationshipFinalizationStore *)self _placeholderForContactUUID:v6];
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE9008];
  v9 = *MEMORY[0x277CE9008];
  v10 = *MEMORY[0x277CE9008];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Removing relationship began placeholder: %@", buf, 0xCu);
    }

    contactsManager = self->_contactsManager;
    v12 = [v7 token];
    [(ASContactsManager *)contactsManager removePlaceholderContactWithToken:v12];

    [(ASRelationshipFinalizationStore *)self _updatePlaceholder:0 contactUUID:v6];
    if (v4)
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__ASRelationshipFinalizationStore_removePlaceholderWithContactUUID_shouldNotify___block_invoke;
      block[3] = &unk_278C4B278;
      v17 = v7;
      dispatch_async(clientQueue, block);
    }

    else
    {
      ASLoggingInitialize();
      v14 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [ASRelationshipFinalizationStore removePlaceholderWithContactUUID:v14 shouldNotify:v7];
      }
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ASRelationshipFinalizationStore removePlaceholderWithContactUUID:v6 shouldNotify:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __81__ASRelationshipFinalizationStore_removePlaceholderWithContactUUID_shouldNotify___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 blocksWaitingOnSuccess];
    *buf = 134217984;
    v18 = [v5 count];
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Friendship finalization success, executing %ld blocks waiting on success", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) blocksWaitingOnSuccess];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performBlockWaitingOnInviteFinalizationForContactUUID:(id)a3 block:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASRelationshipFinalizationStore *)self _placeholderForContactUUID:v6];
  if (v8)
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager friendship is still finalizing, holding this action until complete for contact: %@", buf, 0xCu);
    }

    [v8 registerBlockWaitingOnSuccess:v7];
  }

  else
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__ASRelationshipFinalizationStore_performBlockWaitingOnInviteFinalizationForContactUUID_block___block_invoke;
    block[3] = &unk_278C4B228;
    v13 = v7;
    dispatch_async(clientQueue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_placeholderForContactUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMutableDictionary *)self->_placeholderFriendshipFinalizedTokens objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_unfairLock);

  return v5;
}

- (void)_updatePlaceholder:(id)a3 contactUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMutableDictionary *)self->_placeholderFriendshipFinalizedTokens setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)addFinalizedFriendUUIDs:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMutableArray *)self->_finalizedFriendUUIDs addObject:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)allFinalizedFriendUUIDs
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(NSMutableArray *)self->_finalizedFriendUUIDs copy];
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

- (void)removeAllFinalizedFriendUUIDs
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  finalizedFriendUUIDs = self->_finalizedFriendUUIDs;
  self->_finalizedFriendUUIDs = v3;

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)insertPlaceholderForEventTypes:(uint64_t)a1 contactUUID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "RelationshipManager failed to find contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removePlaceholderWithContactUUID:(void *)a1 shouldNotify:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 blocksWaitingOnSuccess];
  v6 = 134217984;
  v7 = [v4 count];
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "Friendship finalization failed, not executing %ld blocks waiting on success", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePlaceholderWithContactUUID:(uint64_t)a1 shouldNotify:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "No existing relationship began placeholder for contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end