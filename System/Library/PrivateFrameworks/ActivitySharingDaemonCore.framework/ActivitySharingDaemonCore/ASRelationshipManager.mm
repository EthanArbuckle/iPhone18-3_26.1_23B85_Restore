@interface ASRelationshipManager
- (ASRelationshipManager)initWithIsWatch:(BOOL)watch;
- (ASRelationshipManagerSecureCloudDelegate)secureCloudDelegate;
- (BOOL)_appIsInstalled;
- (id)_contactWithIncomingHandshakeToken:(id)token;
- (id)_contactWithInviteRequest:(id)request fromSender:(id)sender;
- (id)_contactWithOutgoingHandshakeToken:(id)token;
- (id)_contactWithRemoteRelationshipRecordZoneID:(id)d;
- (id)_contactWithUUIDPreferringPlaceholders:(id)placeholders;
- (id)_currentActivityDataPreview;
- (id)_queue_handleSavedRecords:(id)records forContact:(id)contact error:(id *)error;
- (id)_relationshipFromContact:(id)contact;
- (id)_remoteRelationshipFromContact:(id)contact;
- (void)_contactStoreDidChangeNotification:(id)notification;
- (void)_insertInviteForContact:(id)contact destination:(id)destination serviceIdentifier:(id)identifier;
- (void)_processActivityDataPreview:(id)preview friendUUID:(id)d;
- (void)_processPersistedMessagesIfNeeded;
- (void)_queue_acceptShares:(id)shares forRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_addPersonWithCloudKitAddress:(id)address toShares:(id)shares cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_fetchSharesForRelationship:(id)relationship cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_insertPlaceholderFriendshipDidBeginForContactWithUUID:(id)d;
- (void)_queue_processEndRelationshipIfNeededForPreviousRemoteRelationship:(id)relationship newRemoteRelationship:(id)remoteRelationship contact:(id)contact xpcActivity:(id)activity cloudKitGroup:(id)group processGroup:(id)processGroup;
- (void)_queue_processRemoteRelationships:(id)relationships activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_reconcileCloudKitRelationships:(id)relationships;
- (void)_queue_saveRelationship:(id)relationship contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_saveRelationship:(id)relationship contact:(id)contact extraRecordsToSave:(id)save extraRecordIDsToDelete:(id)delete activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_saveRelationship:(id)relationship contact:(id)contact withExtraRecords:(id)records activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_saveRelationshipAndFetchOrCreateShares:(id)shares contact:(id)contact cloudKitGroup:(id)group completion:(id)completion;
- (void)acceptInviteRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)acceptShares:(id)shares forRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group completion:(id)completion;
- (void)activitySharingManagerReady:(id)ready;
- (void)beginReceivingMessages;
- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type;
- (void)cloudKitManager:(id)manager didReceiveNewRelationships:(id)relationships fromRecordZoneWithID:(id)d moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewRemoteRelationships:(id)relationships fromRecordZoneWithID:(id)d moreComing:(BOOL)coming activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler;
- (void)dealloc;
- (void)endReceivingMessages;
- (void)friendInviteBulletinManagerDidReceiveActionResponse:(int64_t)response fromContactWithUUID:(id)d;
- (void)handleSavedRecords:(id)records forContact:(id)contact completion:(id)completion;
- (void)ignoreInviteRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)insertRemoteEventType:(unsigned __int16)type onContactWithUUID:(id)d cloudType:(unint64_t)cloudType completion:(id)completion;
- (void)messageCenter:(id)center didReceiveFinalizeHandshake:(id)handshake fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)messageCenter:(id)center didReceiveInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)messageCenter:(id)center didReceiveInviteResponse:(id)response fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)messageCenter:(id)center didReceiveWithdrawInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)notificationManager:(id)manager didReceiveActionResponse:(int64_t)response fromContactWithUUID:(id)d;
- (void)removeFriendWithUUID:(id)d completion:(id)completion;
- (void)removeLegacyFriendWithUUID:(id)d event:(unsigned __int16)event cloudKitGroup:(id)group completion:(id)completion;
- (void)removePlaceholderRelationshipEventWithToken:(id)token;
- (void)saveRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group activity:(id)activity completion:(id)completion;
- (void)saveRelationship:(id)relationship contact:(id)contact extraRecordsToSave:(id)save extraRecordIDsToDelete:(id)delete cloudKitGroup:(id)group activity:(id)activity completion:(id)completion;
- (void)saveRelationshipAndFetchOrCreateShares:(id)shares contact:(id)contact cloudKitGroup:(id)group completion:(id)completion;
- (void)saveRelationships:(id)relationships extraRecordsToSave:(id)save cloudKitGroup:(id)group activity:(id)activity completion:(id)completion;
- (void)sendInviteToPersonWithDestination:(id)destination callerID:(id)d serviceIdentifier:(id)identifier completion:(id)completion;
- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)d completion:(id)completion;
- (void)setActivityDataVisible:(BOOL)visible toFriendWithUUID:(id)d completion:(id)completion;
- (void)setActivityDataVisible:(BOOL)visible toFriendWithUUID:(id)d eventType:(unsigned __int16)type cloudKitGroup:(id)group completion:(id)completion;
- (void)setMuteEnabled:(BOOL)enabled forFriendWithUUID:(id)d completion:(id)completion;
- (void)updateRelationshipsForCurrentFeatureSupportWithActivity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
@end

@implementation ASRelationshipManager

- (ASRelationshipManager)initWithIsWatch:(BOOL)watch
{
  v37[2] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = ASRelationshipManager;
  v3 = [(ASRelationshipManager *)&v33 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v5 = tcc_identity_create();
    [v4 setAssumedIdentity:v5];

    v6 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v4];
    contactStore = v3->_contactStore;
    v3->_contactStore = v6;

    v8 = HKCreateSerialDispatchQueue();
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v8;

    v10 = [[ASAsyncTransactionQueue alloc] initWithDescription:@"RelationshipManagerTransaction" targetSerialQueue:v3->_serialQueue];
    transactionQueue = v3->_transactionQueue;
    v3->_transactionQueue = v10;

    v12 = objc_opt_new();
    relationshipRecordsToReconcile = v3->_relationshipRecordsToReconcile;
    v3->_relationshipRecordsToReconcile = v12;

    v14 = objc_opt_new();
    remoteRelationshipRecordsToProcess = v3->_remoteRelationshipRecordsToProcess;
    v3->_remoteRelationshipRecordsToProcess = v14;

    v16 = objc_opt_new();
    placeholderFriendshipBeganTokens = v3->_placeholderFriendshipBeganTokens;
    v3->_placeholderFriendshipBeganTokens = v16;

    v35 = *MEMORY[0x277CE9340];
    v18 = [[ASIDSMessageCenter alloc] initWithServiceIdentifier:v35];
    v37[0] = v18;
    v36 = *MEMORY[0x277CE9348];
    v19 = [[ASIDSMessageCenter alloc] initWithServiceIdentifier:v36];
    v37[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v35 count:2];
    messageCenters = v3->_messageCenters;
    v3->_messageCenters = v20;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = [(NSDictionary *)v3->_messageCenters allValues];
    v23 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v29 + 1) + 8 * i) setDelegate:v3];
        }

        v24 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_gatewayManager);
  [WeakRetained removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = ASRelationshipManager;
  [(ASRelationshipManager *)&v5 dealloc];
}

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  fitnessAppsStateObserver = [readyCopy fitnessAppsStateObserver];
  fitnessAppsStateObserver = self->_fitnessAppsStateObserver;
  self->_fitnessAppsStateObserver = fitnessAppsStateObserver;

  achievementManager = [readyCopy achievementManager];
  objc_storeWeak(&self->_achievementManager, achievementManager);

  activityDataManager = [readyCopy activityDataManager];
  objc_storeWeak(&self->_activityDataManager, activityDataManager);

  contactsManager = [readyCopy contactsManager];
  objc_storeWeak(&self->_contactsManager, contactsManager);

  friendListManager = [readyCopy friendListManager];
  objc_storeWeak(&self->_friendListManager, friendListManager);

  cloudKitManager = [readyCopy cloudKitManager];
  objc_storeWeak(&self->_cloudKitManager, cloudKitManager);

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained addObserver:self];

  gatewayManager = [readyCopy gatewayManager];
  objc_storeWeak(&self->_gatewayManager, gatewayManager);

  v14 = objc_loadWeakRetained(&self->_gatewayManager);
  [v14 addObserver:self];

  friendInviteBulletinManager = [readyCopy friendInviteBulletinManager];
  objc_storeWeak(&self->_friendInviteBulletinManager, friendInviteBulletinManager);

  v16 = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  [v16 setDelegate:self];

  self->_isWatch = [readyCopy isWatch];
  bulletinPostingManager = [readyCopy bulletinPostingManager];

  objc_storeWeak(&self->_bulletinPostingManager, bulletinPostingManager);
  v18 = [ASRelationshipFinalizationStore alloc];
  v21 = objc_loadWeakRetained(&self->_contactsManager);
  v19 = [(ASRelationshipFinalizationStore *)v18 initWithCloudType:0 contactsManager:v21 clientQueue:self->_serialQueue];
  finalizingStore = self->_finalizingStore;
  self->_finalizingStore = v19;
}

- (BOOL)_appIsInstalled
{
  if (self->_isWatch)
  {
    v2 = MEMORY[0x277D09518];
  }

  else
  {
    v2 = MEMORY[0x277D09530];
  }

  return [(FIFitnessAppsStateObserver *)self->_fitnessAppsStateObserver installStateForBundleIdentifier:*v2]== 1;
}

- (void)beginReceivingMessages
{
  v15 = *MEMORY[0x277D85DE8];
  [(ASRelationshipManager *)self _processPersistedMessagesIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSDictionary *)self->_messageCenters allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) beginReceivingMessages];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contactStoreDidChangeNotification_ name:*MEMORY[0x277CBD140] object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endReceivingMessages
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSDictionary *)self->_messageCenters allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) endReceivingMessages];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setActivityDataVisible:(BOOL)visible toFriendWithUUID:(id)d completion:(id)completion
{
  visibleCopy = visible;
  dCopy = d;
  completionCopy = completion;
  if (visibleCopy)
  {
    v10 = 6;
  }

  else
  {
    v10 = 5;
  }

  v11 = [(ASRelationshipManager *)self insertPlaceholderRelationshipEvent:v10 friendUUID:dCopy];
  objc_copyWeak(&to, &self->_contactsManager);
  v12 = ASCloudKitGroupUserActionExplicit();
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke;
  v18[3] = &unk_278C4DC30;
  objc_copyWeak(&v24, &to);
  v14 = v11;
  v19 = v14;
  v15 = completionCopy;
  v23 = v15;
  selfCopy = self;
  v16 = dCopy;
  v21 = v16;
  v26 = visibleCopy;
  v25 = v10;
  v17 = v12;
  v22 = v17;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v17 completion:v18];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&to);
}

void __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained removePlaceholderContactWithToken:*(a1 + 32)];

    _NotifyOnMainQueue(0, v5, *(a1 + 64));
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke_2;
  v9[3] = &unk_278C4DC08;
  v9[4] = v8;
  v16 = *(a1 + 82);
  v10 = v7;
  v15 = *(a1 + 80);
  v11 = *(a1 + 56);
  objc_copyWeak(&v14, (a1 + 72));
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  [v8 _performBlockWaitingForFriendshipBeganForFriendWithUUID:v10 block:v9];

  objc_destroyWeak(&v14);
}

void __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 82);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke_3;
  v7[3] = &unk_278C4DBE0;
  objc_copyWeak(&v10, (a1 + 72));
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v3 setActivityDataVisible:v2 toFriendWithUUID:v4 eventType:v5 cloudKitGroup:v6 completion:v7];

  objc_destroyWeak(&v10);
}

void __76__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removePlaceholderContactWithToken:*(a1 + 32)];

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2 != 0, v6);
}

- (void)setActivityDataVisible:(BOOL)visible toFriendWithUUID:(id)d eventType:(unsigned __int16)type cloudKitGroup:(id)group completion:(id)completion
{
  dCopy = d;
  groupCopy = group;
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke;
  v26[3] = &unk_278C4DC80;
  v27 = completionCopy;
  v15 = completionCopy;
  v16 = MEMORY[0x23EF0EB00](v26);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_3;
  v20[3] = &unk_278C4DDC0;
  visibleCopy = visible;
  v20[4] = self;
  v21 = dCopy;
  typeCopy = type;
  v22 = groupCopy;
  v23 = v16;
  v17 = v16;
  v18 = groupCopy;
  v19 = dCopy;
  [(ASRelationshipManager *)self _performBlockWaitingForFriendshipBeganForFriendWithUUID:v19 block:v20];
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_2;
  block[3] = &unk_278C4DC58;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4;
  v9[3] = &unk_278C4DD98;
  v13 = *(a1 + 66);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v12 = *(a1 + 64);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 performTransaction:v9];
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 66);
    v7 = *(a1 + 32);
    *buf = 67109378;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager setting activity data visibility to %{BOOL}d for friend with UUID: %{public}@", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v9 = [WeakRetained contactWithUUID:*(a1 + 32)];

  v10 = [*(a1 + 40) _relationshipFromContact:v9];
  v11 = v10;
  if (v9 && *(a1 + 66) != [v10 isActivityDataVisible])
  {
    v12 = objc_loadWeakRetained((*(a1 + 40) + 24));
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_340;
    v15[3] = &unk_278C4DD70;
    v13 = *(a1 + 48);
    v15[4] = *(a1 + 40);
    v16 = v11;
    v17 = *(a1 + 48);
    v22 = *(a1 + 66);
    v21 = *(a1 + 64);
    v18 = v9;
    v19 = v3;
    v20 = *(a1 + 56);
    [v12 fetchOrCreateActivityDataShareWithGroup:v13 activity:0 completion:v15];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_cold_1();
    }

    v3[2](v3);
    (*(*(a1 + 56) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_340(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_2_341;
  block[3] = &unk_278C4DD48;
  v24 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v9;
  v18 = *(a1 + 48);
  v19 = v8;
  v25 = *(a1 + 82);
  v23 = *(a1 + 80);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_2_341(uint64_t a1)
{
  if (*(a1 + 98) == 1 && !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    v4 = [*(a1 + 48) cloudKitAddress];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_3_342;
    v6[3] = &unk_278C4DD20;
    v6[4] = *(a1 + 40);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v14 = *(a1 + 99);
    v8 = *(a1 + 48);
    v13 = *(a1 + 96);
    v9 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    [WeakRetained fetchShareParticipantWithCloudKitAddress:v4 group:v5 completion:v6];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_2_341_cold_1();
    }

    (*(*(a1 + 80) + 16))();
    v2 = *(a1 + 32);
    (*(*(a1 + 88) + 16))();
  }
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_3_342(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 96);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343;
  v14[3] = &unk_278C4DCF8;
  v25 = a2;
  v15 = v7;
  v16 = *(a1 + 40);
  v17 = v8;
  v26 = *(a1 + 90);
  v10 = *(a1 + 48);
  v24 = *(a1 + 88);
  v11 = *(a1 + 32);
  v18 = v10;
  v19 = v11;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, v14);
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 106) == 1 && !*(a1 + 32))
  {
    v5 = [*(a1 + 40) participants];
    v6 = MEMORY[0x277CCAC30];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_5;
    v21[3] = &unk_278C4DCA8;
    v22 = *(a1 + 48);
    v7 = [v6 predicateWithBlock:v21];
    v8 = [v5 filteredArrayUsingPredicate:v7];
    v9 = [v8 firstObject];

    if (v9)
    {
      if (*(a1 + 107))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      [v9 setPermission:v10];
      [*(a1 + 56) insertEventWithType:*(a1 + 104)];
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = *(a1 + 72);
      v23[0] = *(a1 + 40);
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_6;
      v18[3] = &unk_278C4DCD0;
      v15 = *(a1 + 80);
      v19 = *(a1 + 88);
      v20 = *(a1 + 96);
      [v11 _queue_saveRelationship:v12 contact:v13 withExtraRecords:v14 activity:0 cloudKitGroup:v15 completion:v18];

      v16 = v19;
    }

    else
    {
      ASLoggingInitialize();
      v17 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343_cold_2(a1, v17);
      }

      (*(*(a1 + 88) + 16))();
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:8 userInfo:0];
      (*(*(a1 + 96) + 16))();
    }
  }

  else
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343_cold_1(a1, v2);
    }

    (*(*(a1 + 88) + 16))();
    v3 = *(a1 + 32);
    (*(*(a1 + 96) + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a4;
  v9 = a3;
  v7(v6);
  (*(*(a1 + 40) + 16))();
}

- (void)setMuteEnabled:(BOOL)enabled forFriendWithUUID:(id)d completion:(id)completion
{
  enabledCopy = enabled;
  dCopy = d;
  completionCopy = completion;
  if (enabledCopy)
  {
    v10 = 8;
  }

  else
  {
    v10 = 9;
  }

  v11 = [(ASRelationshipManager *)self insertPlaceholderRelationshipEvent:v10 friendUUID:dCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke;
  v15[3] = &unk_278C4DDC0;
  v20 = enabledCopy;
  v15[4] = self;
  v16 = dCopy;
  v19 = v10;
  v17 = v11;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v11;
  v14 = dCopy;
  [(ASRelationshipManager *)self _performBlockWaitingForFriendshipBeganForFriendWithUUID:v14 block:v15];
}

void __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C4DD98;
  v14 = *(a1 + 66);
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 performTransaction:v10];
}

void __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 66);
    v7 = *(a1 + 32);
    *buf = 67109378;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager setting muting to %{BOOL}d for friend with UUID: %{public}@", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v9 = [WeakRetained contactWithUUID:*(a1 + 32)];

  v10 = [*(a1 + 40) _relationshipFromContact:v9];
  v11 = v10;
  if (v9)
  {
    if (*(a1 + 66) != [v10 isMuteEnabled])
    {
      [v11 insertEventWithType:*(a1 + 64)];
      v15 = *(a1 + 40);
      v16 = ASCloudKitGroupUserActionExplicit();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_352;
      v19[3] = &unk_278C4DDE8;
      v17 = *(a1 + 48);
      v19[4] = *(a1 + 40);
      v20 = v17;
      v21 = v3;
      v22 = *(a1 + 56);
      [v15 _queue_saveRelationship:v11 contact:v9 activity:0 cloudKitGroup:v16 completion:v19];

      goto LABEL_13;
    }

    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2_cold_1();
    }

    v12 = 5;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2_cold_2();
    }

    v12 = 3;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:v12 userInfo:0];
  v14 = objc_loadWeakRetained((*(a1 + 40) + 32));
  [v14 removePlaceholderContactWithToken:*(a1 + 48)];

  v3[2](v3);
  _NotifyOnMainQueue(0, v13, *(a1 + 56));

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
}

void __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_352(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 32));
  [WeakRetained removePlaceholderContactWithToken:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
  _NotifyOnMainQueue(a2, v7, *(a1 + 56));
}

- (void)removeFriendWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASRelationshipManager_removeFriendWithUUID_completion___block_invoke;
  block[3] = &unk_278C4BA30;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(serialQueue, block);
}

void __57__ASRelationshipManager_removeFriendWithUUID_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = ASCloudKitGroupUserActionExplicit();
  [v2 _queue_removeFriendWithUUID:v3 eventType:4 activity:0 cloudKitGroup:v4 completion:a1[6]];
}

- (void)removeLegacyFriendWithUUID:(id)d event:(unsigned __int16)event cloudKitGroup:(id)group completion:(id)completion
{
  dCopy = d;
  groupCopy = group;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ASRelationshipManager_removeLegacyFriendWithUUID_event_cloudKitGroup_completion___block_invoke;
  block[3] = &unk_278C4DE10;
  block[4] = self;
  v18 = dCopy;
  eventCopy = event;
  v19 = groupCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = groupCopy;
  v16 = dCopy;
  dispatch_async(serialQueue, block);
}

void __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_2;
  v8[3] = &unk_278C4DE38;
  v7 = *(a1 + 32);
  v2 = *(v7 + 80);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 performTransaction:v8];
}

void __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v6 = [*(a1 + 32) _relationshipFromContact:v5];
  if (([v6 isFriendshipActive] & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_2_cold_1();
    }

    v3[2](v3);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:9 userInfo:0];
    _NotifyOnMainQueue(0, v7, *(a1 + 64));
  }

  [v6 insertEventWithType:*(a1 + 72)];
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_353;
  v12[3] = &unk_278C4DCD0;
  v13 = v3;
  v14 = *(a1 + 64);
  v11 = v3;
  [v8 _queue_saveRelationship:v6 contact:v5 activity:v9 cloudKitGroup:v10 completion:v12];
}

void __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_353(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5);
  _NotifyOnMainQueue(a2, v7, *(a1 + 40));
}

- (void)updateRelationshipsForCurrentFeatureSupportWithActivity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke;
  v15[3] = &unk_278C4DEA8;
  v15[4] = self;
  v16 = activityCopy;
  v17 = groupCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = groupCopy;
  v14 = activityCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v15];
}

void __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v29 = a2;
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "RelationshipManager checking for contacts that require a supported feature update", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [WeakRetained contacts];

  v6 = [MEMORY[0x277CBEB98] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [*(a1 + 32) _relationshipFromContact:v12];
        if (ASRelationshipNeedsSupportedFeaturesUpdate())
        {
          ASLoggingInitialize();
          v14 = *MEMORY[0x277CE9008];
          if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            v16 = [v13 UUID];
            v17 = [v12 displayName];
            *buf = 138543618;
            v38 = v16;
            v39 = 2112;
            v40 = v17;
            _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Relationship requires supported feature update: %{public}@ - %@", buf, 0x16u);
          }

          ASUpdateSupportedFeaturesForRelationship();
          v18 = [v6 setByAddingObject:v13];

          v6 = v18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }

  v19 = [v6 count];
  ASLoggingInitialize();
  v20 = *MEMORY[0x277CE9008];
  v21 = os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "RelationshipManager serializing relationship records and saving to CloudKit", buf, 2u);
    }

    v22 = [v6 allObjects];
    v23 = [v22 hk_map:&__block_literal_global_357_0];

    v24 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_2;
    v30[3] = &unk_278C4D690;
    v30[4] = *(a1 + 32);
    v31 = *(a1 + 56);
    v27 = v29;
    v32 = v29;
    [v24 saveRecordsIntoPrivateDatabase:v23 priority:2 activity:v25 group:v26 completion:v30];
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find any relationships requiring a supported feature update", buf, 2u);
    }

    _NotifyOnMainQueue(1, 0, *(a1 + 56));
    v27 = v29;
    v29[2](v29);
  }

  v28 = *MEMORY[0x277D85DE8];
}

id __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_354(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ASCloudKitManager relationshipZone];
  v4 = [v2 recordWithZoneID:v3 recordEncryptionType:0];

  return v4;
}

void __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7 && a2)
  {
    v25 = a2;
    v8 = MEMORY[0x277CE9118];
    v9 = [MEMORY[0x277CBEB98] setWithArray:a4];
    v10 = [v8 relationshipsWithRelationshipAndEventRecords:v9];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      v15 = MEMORY[0x277CE9008];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
          v19 = [v17 UUID];
          v20 = [WeakRetained contactWithUUID:v19];

          if (v20)
          {
            v21 = [v20 relationshipStorage];
            [v21 setLegacyRelationship:v17];
            [v20 setRelationshipStorage:v21];
            v22 = objc_loadWeakRetained((*(a1 + 32) + 32));
            [v22 saveContact:v20];
          }

          else
          {
            ASLoggingInitialize();
            v23 = *v15;
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_2_cold_1(&v30, v23, v17, &v31);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v13);
    }

    v7 = 0;
    LOBYTE(a2) = v25;
  }

  _NotifyOnMainQueue(a2, v7, *(a1 + 40));
  (*(*(a1 + 48) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendInviteToPersonWithDestination:(id)destination callerID:(id)d serviceIdentifier:(id)identifier completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  ASLoggingInitialize();
  v14 = MEMORY[0x277CE9008];
  v15 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = destinationCopy;
    v28 = 2114;
    v29 = identifierCopy;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "RelationshipManager starting invite flow for person with destination: %@, serviceIdentifier: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_gatewayManager);
  hasReachedMaximumNumberOfFriends = [WeakRetained hasReachedMaximumNumberOfFriends];

  if (hasReachedMaximumNumberOfFriends)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager sendInviteToPersonWithDestination:callerID:serviceIdentifier:completion:];
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:6 userInfo:0];
    _NotifyOnMainQueue(0, v18, completionCopy);
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke;
    block[3] = &unk_278C4E010;
    block[4] = self;
    v22 = destinationCopy;
    v23 = identifierCopy;
    v25 = completionCopy;
    v24 = dCopy;
    dispatch_async(serialQueue, block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke(id *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE9008];
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "RelationshipManager looking up placeholder contact", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1[4] + 4);
  v28[0] = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v6 = [WeakRetained contactWithDestinations:v5];

  if (!v6)
  {
    ASLoggingInitialize();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find existing contact, creating new placeholder", buf, 2u);
    }

    v8 = objc_loadWeakRetained(a1[4] + 4);
    v27 = a1[5];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v6 = [v8 createContactWithDestinations:v9];
  }

  [a1[4] _insertInviteForContact:v6 destination:a1[5] serviceIdentifier:a1[6]];
  v10 = objc_loadWeakRetained(a1[4] + 4);
  v11 = [v10 savePlaceholderContact:v6];

  v12 = ASCloudKitGroupSharingSetup();
  v13 = objc_loadWeakRetained(a1[4] + 3);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_361;
  v18[3] = &unk_278C4DFE8;
  v18[4] = a1[4];
  v19 = v12;
  v20 = v11;
  v25 = a1[8];
  v21 = a1[5];
  v22 = v6;
  v23 = a1[6];
  v24 = a1[7];
  v14 = v6;
  v15 = v11;
  v16 = v12;
  [v13 fetchCloudKitAddressWithCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_361(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_2;
  v7[3] = &unk_278C4DFC0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v15 = *(a1 + 88);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = v3;
  v13 = *(a1 + 80);
  v14 = *(a1 + 40);
  v6 = v3;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v5 completion:v7];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 32));
    [WeakRetained removePlaceholderContactWithToken:*(a1 + 40)];

    _NotifyOnMainQueue(a2, v5, *(a1 + 96));
  }

  else
  {
    v7 = *(v6 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_3;
    v20[3] = &unk_278C4DF98;
    v20[4] = v6;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v21 = v13;
    v22 = v12;
    v14 = *(a1 + 96);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    *&v17 = *(a1 + 88);
    *(&v17 + 1) = v14;
    *&v18 = v15;
    *(&v18 + 1) = v16;
    v23 = v18;
    v24 = v17;
    [v7 performTransaction:v20];
  }
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager fetch complete, looking up contact again", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v36[0] = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v8 = [WeakRetained contactWithDestinations:v7];

  ASLoggingInitialize();
  v9 = *v4;
  v10 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager contact already exists, just update it with the invite data", buf, 2u);
    }

    [*(a1 + 32) _insertInviteForContact:v8 destination:*(a1 + 40) serviceIdentifier:*(a1 + 56)];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find existing contact, copying the placeholder to save so the UUIDs match", buf, 2u);
    }

    v8 = [*(a1 + 48) copy];
  }

  v11 = [*(a1 + 32) _remoteRelationshipFromContact:v8];
  if ([v11 isFriendshipActive] && (objc_msgSend(v11, "isActivityDataVisible") & 1) == 0)
  {
    ASLoggingInitialize();
    v22 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "RelationshipManager friendship already active, but activity data is not visible", buf, 2u);
    }

    ASLoggingInitialize();
    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "RelationshipManager not sending invite to avoid triggering an unhide on the remote device", buf, 2u);
    }

    v24 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v24 removePlaceholderContactWithToken:*(a1 + 64)];

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:7 userInfo:0];
    _NotifyOnMainQueue(0, v18, *(a1 + 96));
    v3[2](v3);
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CE90A8]);
    v13 = [*(a1 + 32) _relationshipFromContact:v8];
    v14 = [v13 outgoingHandshakeToken];
    [v12 setHandshakeToken:v14];

    [v12 setInviterCloudKitAddress:*(a1 + 72)];
    [v12 setInviterCallerID:*(a1 + 80)];
    v15 = _DeviceBuildNumber();
    [v12 setInviterBuildNumber:v15];

    v16 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v12 setInviterVersion:{objc_msgSend(v16, "inviteCompatibilityVersion")}];

    v17 = [*(a1 + 32) _currentActivityDataPreview];
    [v12 setActivityDataPreview:v17];

    v18 = [*(a1 + 32) _relationshipFromContact:v8];
    v19 = *(a1 + 32);
    v20 = *(a1 + 88);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_363;
    v26[3] = &unk_278C4DF70;
    v26[4] = v19;
    v27 = *(a1 + 64);
    v33 = v3;
    v34 = *(a1 + 96);
    v28 = *(a1 + 40);
    v29 = *(a1 + 56);
    v30 = v12;
    v31 = v8;
    v32 = *(a1 + 88);
    v21 = v12;
    [v19 _queue_saveRelationshipAndFetchOrCreateShares:v18 contact:v31 cloudKitGroup:v20 completion:v26];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_363(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained removePlaceholderContactWithToken:*(a1 + 40)];

  if (v9 || (a2 & 1) == 0)
  {
    (*(*(a1 + 88) + 16))();
    _NotifyOnMainQueue(a2, v9, *(a1 + 96));
  }

  else
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "RelationshipManager donating address to IDS %@", buf, 0xCu);
    }

    v14 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:*(a1 + 56)];
    v32 = *(a1 + 48);
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_364;
    v24[3] = &unk_278C4DF48;
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v25 = *(a1 + 64);
    v26 = *(a1 + 48);
    v27 = v14;
    v28 = *(a1 + 32);
    v29 = v10;
    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v31 = v21;
    v30 = v20;
    v22 = v14;
    [v22 donateAddresses:v15 completion:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_364(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    (*(*(a1 + 88) + 16))();
    _NotifyOnMainQueue(a2, v5, *(a1 + 96));
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 handshakeToken];
      v10 = *(a1 + 40);
      *buf = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "RelationshipManager sending invite with token %@ to destination: %@", buf, 0x16u);
    }

    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_365;
    v20[3] = &unk_278C4DF20;
    v19 = *(a1 + 56);
    v14 = *(&v19 + 1);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v21 = v19;
    v22 = v17;
    v23 = *(a1 + 88);
    v24 = *(a1 + 96);
    [v11 sendInviteRequest:v12 toDestinations:v13 completion:v20];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_365(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_2_366;
    block[3] = &unk_278C4DEF8;
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = *(a1 + 32);
    v11 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = v11;
    v14 = v10;
    v16 = *(a1 + 64);
    v15 = v5;
    v17 = *(a1 + 72);
    dispatch_async(v6, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    _NotifyOnMainQueue(1, 0, *(a1 + 72));
  }
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_2_366(uint64_t a1)
{
  [*(a1 + 32) insertEventWithType:3];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_3_367;
  v6[3] = &unk_278C4DED0;
  v8 = *(a1 + 72);
  v7 = *(a1 + 64);
  v9 = *(a1 + 80);
  [v2 _queue_saveRelationship:v3 contact:v4 activity:0 cloudKitGroup:v5 completion:v6];
}

void __97__ASRelationshipManager_sendInviteToPersonWithDestination_callerID_serviceIdentifier_completion___block_invoke_3_367(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  _NotifyOnMainQueue(0, v2, v3);
}

- (void)acceptInviteRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_gatewayManager);
  hasReachedMaximumNumberOfFriends = [WeakRetained hasReachedMaximumNumberOfFriends];

  if (hasReachedMaximumNumberOfFriends)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager sendInviteToPersonWithDestination:callerID:serviceIdentifier:completion:];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:6 userInfo:0];
    _NotifyOnMainQueue(0, v10, completionCopy);
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke;
    block[3] = &unk_278C4BA30;
    block[4] = self;
    v13 = dCopy;
    v14 = completionCopy;
    dispatch_async(serialQueue, block);
  }
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_insertPlaceholderFriendshipDidBeginForContactWithUUID:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained updateFitnessAppBadgeCount];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2;
  v5[3] = &unk_278C4E150;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 fetchCloudKitAddressWithCompletion:v5];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3;
  v9[3] = &unk_278C4E128;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = *(a1 + 48);
  v12 = v3;
  v13 = v7;
  v8 = v3;
  [v4 performTransaction:v9];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager preparing to accept invite from friend with UUID: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v8 = [WeakRetained contactWithUUID:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) _relationshipFromContact:v8];
    v10 = [v9 incomingHandshakeToken];

    if (v10)
    {
      v11 = [v9 cloudKitAddress];

      if (v11)
      {
        goto LABEL_15;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:v12 userInfo:0];
    if (v13)
    {
      v14 = v13;
      ASLoggingInitialize();
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_cold_1();
      }

      _NotifyOnMainQueue(0, v14, *(a1 + 56));
      [*(a1 + 40) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 32) success:0];
      v3[2](v3);
      goto LABEL_16;
    }

LABEL_15:
    v15 = objc_alloc_init(MEMORY[0x277CE90B0]);
    v16 = [v9 incomingHandshakeToken];
    [v15 setHandshakeToken:v16];

    [v15 setResponseCode:1];
    [v15 setInviteeCloudKitAddress:*(a1 + 48)];
    v17 = _DeviceBuildNumber();
    [v15 setInviteeBuildNumber:v17];

    v18 = objc_loadWeakRetained((*(a1 + 40) + 56));
    [v15 setInviteeVersion:{objc_msgSend(v18, "inviteCompatibilityVersion")}];

    v19 = [*(a1 + 40) _currentActivityDataPreview];
    [v15 setActivityDataPreview:v19];

    v20 = MEMORY[0x277CBEB98];
    v21 = [v9 preferredReachableAddress];
    v22 = [v20 setWithObject:v21];

    v14 = [v9 preferredReachableService];
    v23 = [*(*(a1 + 40) + 160) objectForKeyedSubscript:v14];
    [v9 insertEventWithType:2];
    v24 = [v22 allObjects];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_371;
    v31[3] = &unk_278C4E100;
    v30 = *(a1 + 32);
    v25 = v30.i64[0];
    v32 = vextq_s8(v30, v30, 8uLL);
    v38 = v3;
    v39 = *(a1 + 56);
    v33 = v9;
    v34 = v15;
    v40 = 1;
    v35 = v22;
    v36 = v23;
    v37 = v8;
    v26 = v23;
    v27 = v22;
    v28 = v15;
    [v26 donateAddresses:v24 completion:v31];

LABEL_16:
    goto LABEL_17;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_cold_2();
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:3 userInfo:0];
  _NotifyOnMainQueue(0, v9, *(a1 + 56));
  [*(a1 + 40) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 32) success:0];
  v3[2](v3);
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_371(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2_372;
  block[3] = &unk_278C4E0D8;
  v26 = a2;
  v19 = v5;
  v17 = *(a1 + 32);
  v7 = *(&v17 + 1);
  v8 = *(a1 + 88);
  v24 = *(a1 + 96);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v20 = v17;
  v21 = v11;
  v25 = *(a1 + 104);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *&v14 = *(a1 + 80);
  *(&v14 + 1) = v8;
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v22 = v15;
  v23 = v14;
  v16 = v5;
  dispatch_async(v6, block);
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2_372(uint64_t a1)
{
  if (*(a1 + 120) == 1 && !*(a1 + 32))
  {
    v5 = ASCloudKitGroupSharingSetup();
    v6 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_373;
    v15[3] = &unk_278C4E0B0;
    v15[4] = v6;
    v7 = *(a1 + 56);
    v16 = *(a1 + 48);
    v21 = *(a1 + 96);
    v22 = *(a1 + 104);
    v17 = *(a1 + 56);
    v18 = v5;
    v8 = *(a1 + 64);
    v23 = *(a1 + 112);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v19 = v13;
    v20 = v12;
    v14 = v5;
    [v6 _queue_fetchSharesForRelationship:v7 cloudKitGroup:v14 completion:v15];
  }

  else
  {
    [*(a1 + 40) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 48) success:0];
    (*(*(a1 + 96) + 16))();
    v2 = *(a1 + 120);
    v3 = *(a1 + 32);
    v4 = *(a1 + 104);

    _NotifyOnMainQueue(v2, v3, v4);
  }
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_373(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  if (v9 || (a2 & 1) == 0)
  {
    [*(a1 + 32) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 40) success:0];
    (*(*(a1 + 96) + 16))();
    _NotifyOnMainQueue(a2, v9, *(a1 + 104));
  }

  else
  {
    v29 = [*(a1 + 48) cloudKitAddress];
    v39[0] = v10;
    v39[1] = v11;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v28 = *(a1 + 56);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_4;
    v30[3] = &unk_278C4E088;
    v13 = *(a1 + 40);
    v30[4] = *(a1 + 32);
    v31 = v13;
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    v32 = v10;
    v33 = v11;
    v16 = *(a1 + 64);
    v38 = *(a1 + 112);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v34 = v21;
    v35 = v20;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v37 = v25;
    v36 = v24;
    [v12 _queue_addPersonWithCloudKitAddress:v29 toShares:v27 cloudKitGroup:v28 completion:v30];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    [*(a1 + 32) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 40) success:0];
    (*(*(a1 + 112) + 16))();
    _NotifyOnMainQueue(a2, v5, *(a1 + 120));
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CE90C8]);
    v7 = [*(a1 + 48) URL];
    v8 = [v7 absoluteString];
    [v6 setActivityShareURL:v8];

    v9 = [*(a1 + 56) URL];
    v10 = [v9 absoluteString];
    [v6 setRelationshipShareURL:v10];

    [*(a1 + 64) setInviteeShareLocations:v6];
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 64);
      v14 = v11;
      v15 = [v13 handshakeToken];
      v16 = *(a1 + 72);
      *buf = 134218498;
      v33 = v12;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "RelationshipManager sending invite response %ld with token %@ to %@", buf, 0x20u);
    }

    v18 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 64);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_375;
    v26[3] = &unk_278C4E060;
    v25 = *(a1 + 32);
    v20 = *(&v25 + 1);
    v30 = *(a1 + 112);
    v31 = *(a1 + 120);
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    v27 = v25;
    v28 = v23;
    v29 = *(a1 + 104);
    [v17 sendInviteResponse:v19 toDestinations:v18 fromAddress:0 completion:v26];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_375(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2_376;
  block[3] = &unk_278C4E038;
  v20 = a2;
  v14 = v5;
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v15 = v12;
  v16 = v10;
  v17 = *(a1 + 64);
  v11 = v5;
  dispatch_async(v6, block);
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2_376(uint64_t a1)
{
  if (*(a1 + 96) == 1 && !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    [WeakRetained withdrawInviteNotificationsForContact:*(a1 + 56)];

    v6 = *(a1 + 40);
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_377;
    v10[3] = &unk_278C4DCD0;
    v9 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    [v6 _queue_saveRelationship:v7 contact:v8 activity:0 cloudKitGroup:v9 completion:v10];
  }

  else
  {
    [*(a1 + 40) _queue_removePlaceholderRelationshipBeganForContactWithUUID:*(a1 + 48) success:0];
    (*(*(a1 + 80) + 16))();
    v2 = *(a1 + 96);
    v3 = *(a1 + 32);
    v4 = *(a1 + 88);

    _NotifyOnMainQueue(v2, v3, v4);
  }
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_377(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5);
  _NotifyOnMainQueue(a2, v7, *(a1 + 40));
}

- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)d completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE9008];
  v9 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = dCopy;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager attempting to withdraw invite request to friend with UUID: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v11 = [WeakRetained contactWithUUID:dCopy];

  if (v11)
  {
    v12 = [(ASRelationshipManager *)self _relationshipFromContact:v11];
    if ([v12 isFriendshipActive])
    {
      ASLoggingInitialize();
      v13 = *v8;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        serialQueue = self->_serialQueue;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __78__ASRelationshipManager_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke;
        v18[3] = &unk_278C4E1A0;
        v18[4] = self;
        v19 = dCopy;
        v20 = v12;
        v21 = completionCopy;
        v15 = v12;
        dispatch_async(serialQueue, v18);

        goto LABEL_15;
      }

      *buf = 0;
      v14 = "RelationshipManager detected friendship is already active";
    }

    else
    {
      if ([v12 hasOutgoingInviteRequest])
      {
        goto LABEL_14;
      }

      ASLoggingInitialize();
      v13 = *v8;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v14 = "RelationshipManager didn't find a pending outgoing request to this contact";
    }

    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    goto LABEL_14;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [ASRelationshipManager sendWithdrawInviteRequestToFriendWithUUID:completion:];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:3 userInfo:0];
  _NotifyOnMainQueue(0, v15, completionCopy);
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

void __78__ASRelationshipManager_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = ASCloudKitGroupSharingSetup();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__ASRelationshipManager_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke_2;
  v7[3] = &unk_278C4E178;
  v10 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v2 _queue_removeFriendWithUUID:v3 eventType:3 activity:0 cloudKitGroup:v4 completion:v7];
}

void __78__ASRelationshipManager_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  _NotifyOnMainQueue(a2, a3, *(a1 + 48));
  if (!a3 && a2)
  {
    v12 = objc_alloc_init(MEMORY[0x277CE90D0]);
    v6 = [*(a1 + 32) outgoingHandshakeToken];
    [v12 setHandshakeToken:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = [*(a1 + 32) preferredReachableAddress];
    v9 = [v7 setWithObject:v8];

    v10 = [*(a1 + 32) preferredReachableService];
    v11 = [*(*(a1 + 40) + 160) objectForKeyedSubscript:v10];
    [v11 sendWithdrawInviteRequest:v12 toDestinations:v9 completion:0];
  }
}

- (void)ignoreInviteRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ASRelationshipManager *)self insertPlaceholderRelationshipEvent:7 friendUUID:dCopy];
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  [WeakRetained updateFitnessAppBadgeCount];

  transactionQueue = self->_transactionQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke;
  v14[3] = &unk_278C4E128;
  v15 = dCopy;
  selfCopy = self;
  v17 = v8;
  v18 = completionCopy;
  v11 = v8;
  v12 = completionCopy;
  v13 = dCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v14];
}

void __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager attempting to ignore incoming invite from friend with UUID: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v8 = [WeakRetained contactWithUUID:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) _relationshipFromContact:v8];
    if ([v9 isAwaitingInviteResponse])
    {
      [v9 insertEventWithType:7];
      v10 = *(a1 + 40);
      v11 = ASCloudKitGroupSharingSetup();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke_380;
      v17[3] = &unk_278C4E1C8;
      v17[4] = *(a1 + 40);
      v18 = v8;
      v19 = *(a1 + 48);
      v20 = v3;
      v21 = *(a1 + 56);
      [v10 _queue_saveRelationship:v9 contact:v18 activity:0 cloudKitGroup:v11 completion:v17];
    }

    else
    {
      ASLoggingInitialize();
      v13 = *v4;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke_cold_1(v13);
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:4 userInfo:0];
      _NotifyOnMainQueue(0, v14, *(a1 + 56));
      v15 = objc_loadWeakRetained((*(a1 + 40) + 32));
      [v15 removePlaceholderContactWithToken:*(a1 + 48)];

      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager sendWithdrawInviteRequestToFriendWithUUID:completion:];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:3 userInfo:0];
    _NotifyOnMainQueue(0, v9, *(a1 + 56));
    v12 = objc_loadWeakRetained((*(a1 + 40) + 32));
    [v12 removePlaceholderContactWithToken:*(a1 + 48)];

    v3[2](v3);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke_380(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (!v8 && a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained updateFitnessAppBadgeCount];

    v6 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v6 withdrawInviteNotificationsForContact:*(a1 + 40)];
  }

  v7 = objc_loadWeakRetained((*(a1 + 32) + 32));
  [v7 removePlaceholderContactWithToken:*(a1 + 48)];

  (*(*(a1 + 56) + 16))();
  _NotifyOnMainQueue(a2, v8, *(a1 + 64));
}

- (void)messageCenter:(id)center didReceiveInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  requestCopy = request;
  addressCopy = address;
  receiverAddressCopy = receiverAddress;
  completionCopy = completion;
  ASLoggingInitialize();
  v16 = MEMORY[0x277CE9008];
  v17 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    inviterCloudKitAddress = [requestCopy inviterCloudKitAddress];
    inviterCallerID = [requestCopy inviterCallerID];
    *buf = 138412802;
    v38 = addressCopy;
    v39 = 2112;
    v40 = inviterCloudKitAddress;
    v41 = 2112;
    v42 = inviterCallerID;
    _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "RelationshipManager received invite request from %@, cloudKitAddress=%@, callerID=%@", buf, 0x20u);
  }

  ASLoggingInitialize();
  v21 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    handshakeToken = [requestCopy handshakeToken];
    inviterBuildNumber = [requestCopy inviterBuildNumber];
    inviterVersion = [requestCopy inviterVersion];
    *buf = 138412802;
    v38 = handshakeToken;
    v39 = 2114;
    v40 = inviterBuildNumber;
    v41 = 1024;
    LODWORD(v42) = inviterVersion;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "RelationshipManager invite info: handshakeToken=%@, buildNumber=%{public}@, version=%d", buf, 0x1Cu);
  }

  if ([(ASRelationshipManager *)self _appIsInstalled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_gatewayManager);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke;
    v31[3] = &unk_278C4E268;
    v36 = completionCopy;
    v31[4] = self;
    v32 = requestCopy;
    v33 = addressCopy;
    v27 = centerCopy;
    v34 = centerCopy;
    v35 = receiverAddressCopy;
    [WeakRetained gatewayStatusWithCompletion:v31];
  }

  else
  {
    ASLoggingInitialize();
    v28 = *v16;
    v27 = centerCopy;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing invite because activity app is not installed, persisting for later delivery", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke(id *a1, int a2, int a3, char a4, void *a5)
{
  v9 = a5;
  if (v9 && (a4 & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_cold_1();
    }

    (*(a1[9] + 2))();
    goto LABEL_17;
  }

  if (a3)
  {
    v10 = [a1[4] _contactWithInviteRequest:a1[5] fromSender:a1[6]];
    WeakRetained = objc_loadWeakRetained(a1[4] + 6);
    [WeakRetained updateFitnessAppBadgeCount];

    v12 = objc_loadWeakRetained(a1[4] + 5);
    [v12 showInviteAttemptNeedToUpgradeFrom:v10];
LABEL_14:

    (*(a1[9] + 2))();
    goto LABEL_17;
  }

  if (!a2)
  {
    v10 = [a1[4] _contactWithInviteRequest:a1[5] fromSender:a1[6]];
    v22 = objc_loadWeakRetained(a1[4] + 6);
    [v22 updateFitnessAppBadgeCount];

    v12 = objc_loadWeakRetained(a1[4] + 5);
    [v12 showInviteAttemptNeedToSignInFrom:v10];
    goto LABEL_14;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_381;
  v25[3] = &unk_278C4E240;
  v23 = a1[4];
  v29 = a1[9];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v23;
  *(&v17 + 1) = v13;
  v26 = v17;
  v27 = v16;
  v28 = a1[8];
  v18 = MEMORY[0x23EF0EB00](v25);
  v19 = v18;
  if (*(a1[4] + 137) == 1)
  {
    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "RelationshipManager device is a watch, processing invite block with delay", buf, 2u);
    }

    v21 = dispatch_time(0, 8000000000);
    dispatch_after(v21, MEMORY[0x277D85CD0], v19);
  }

  else
  {
    (*(v18 + 16))(v18);
  }

LABEL_17:
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_381(uint64_t a1)
{
  v2 = ASCloudKitGroupSharingSetup();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2;
  v10[3] = &unk_278C4D318;
  v15 = *(a1 + 72);
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = *(a1 + 64);
  v14 = v2;
  v8 = v2;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v8 completion:v10];
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v9 = *(a1 + 80);
    v10 = *(*(a1 + 80) + 16);

    v10();
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3;
    v12[3] = &unk_278C4E218;
    v11 = *(a1 + 32);
    v4 = *(v11 + 80);
    v5 = *(&v11 + 1);
    v6 = *(a1 + 48);
    v17 = *(a1 + 80);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v13 = v11;
    v14 = v8;
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    [v4 performTransaction:v12];
  }
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 40);
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) _contactWithInviteRequest:*(a1 + 40) fromSender:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v8 = [WeakRetained shouldFilterIncomingMessageFromContact:v6];

  if (!v8)
  {
    v10 = [*v5 _relationshipFromContact:v6];
    v11 = objc_loadWeakRetained(*v5 + 7);
    v12 = [v11 isInviteVersionCompatible:{objc_msgSend(*v4, "inviterVersion")}];

    if ((v12 & 1) == 0)
    {
      ASLoggingInitialize();
      v17 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3_cold_1((a1 + 32), v17, (a1 + 40));
      }

      v18 = objc_alloc_init(MEMORY[0x277CE90B0]);
      v19 = [*(a1 + 40) handshakeToken];
      [v18 setHandshakeToken:v19];

      [v18 setResponseCode:2];
      v20 = objc_loadWeakRetained((*(a1 + 32) + 56));
      [v18 setInviteeVersion:{objc_msgSend(v20, "inviteCompatibilityVersion")}];

      v21 = *(a1 + 56);
      v22 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
      [v21 sendInviteResponse:v18 toDestinations:v22 fromAddress:*(a1 + 64) completion:0];

      v23 = objc_loadWeakRetained((*(a1 + 32) + 56));
      LODWORD(v22) = [v23 inviteCompatibilityVersion];
      v24 = [*(a1 + 40) inviterVersion];

      if (v22 < v24)
      {
        v25 = objc_loadWeakRetained(*v5 + 5);
        [v25 showVersionTooLowForIncomingInviteFrom:v6];
      }

      (*(*(a1 + 80) + 16))();
      v3[2](v3);
      goto LABEL_26;
    }

    v13 = [v10 addresses];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB58] set];
    }

    v18 = v16;

    [v18 addObject:*(a1 + 48)];
    v26 = [*(a1 + 40) inviterCallerID];

    if (v26)
    {
      v27 = [*v4 inviterCallerID];
      [v18 addObject:v27];
    }

    v28 = [*(a1 + 40) handshakeToken];
    [v10 setIncomingHandshakeToken:v28];

    v29 = [*(a1 + 40) inviterCloudKitAddress];
    [v10 setCloudKitAddress:v29];

    [v10 setAddresses:v18];
    [v10 setPreferredReachableAddress:*(a1 + 48)];
    v30 = [*(a1 + 56) serviceIdentifier];
    [v10 setPreferredReachableService:v30];

    v31 = [v6 relationshipStorage];
    v32 = [v31 legacyRemoteRelationship];
    [v32 insertEventWithType:1];
    v45 = v31;
    [v31 setLegacyRemoteRelationship:v32];
    v33 = [v6 relationshipStorage];
    [v33 setLegacyRemoteRelationship:v32];

    v34 = MEMORY[0x277CBEAA8];
    v35 = [*(a1 + 40) activityDataPreview];
    [v35 date];
    v36 = [v34 dateWithTimeIntervalSinceReferenceDate:?];

    v37 = [v10 dateForLatestIncomingInviteRequest];
    if ([v37 isEqualToDate:v36])
    {
      if ([v10 isAwaitingInviteResponse])
      {

LABEL_22:
        ASLoggingInitialize();
        v42 = *MEMORY[0x277CE9008];
        if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v36;
          _os_log_impl(&dword_23E5E3000, v42, OS_LOG_TYPE_DEFAULT, "RelationshipManager already notified for invite request at %@; not notifying again", buf, 0xCu);
        }

        (*(*(a1 + 80) + 16))();
        v3[2](v3);
        goto LABEL_25;
      }

      v41 = [v10 sentInviteResponse];

      if (v41)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    [v10 insertEventWithType:100 timestamp:v36];
    v38 = *(a1 + 32);
    v44 = *(a1 + 72);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_384;
    v46[3] = &unk_278C4E1F0;
    v51 = v3;
    v52 = *(a1 + 80);
    v39 = v10;
    v40 = *(a1 + 32);
    v47 = v39;
    v48 = v40;
    v49 = v6;
    v50 = *(a1 + 40);
    [v38 _queue_saveRelationshipAndFetchOrCreateShares:v39 contact:v49 cloudKitGroup:v44 completion:v46];

LABEL_25:
LABEL_26:

    goto LABEL_27;
  }

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing invite because contact is a filtered contact.", buf, 2u);
  }

  (*(*(a1 + 80) + 16))();
  v3[2](v3);
LABEL_27:

  v43 = *MEMORY[0x277D85DE8];
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_384(uint64_t a1, char a2, uint64_t a3)
{
  (*(*(a1 + 64) + 16))();
  if (!a3 && (a2 & 1) != 0)
  {
    if ([*(a1 + 32) isFriendshipActive] && (objc_msgSend(*(a1 + 32), "isActivityDataVisible") & 1) == 0)
    {
      ASLoggingInitialize();
      v17 = MEMORY[0x277CE9008];
      v18 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "RelationshipManager friendship already active, but activity data is not visible", buf, 2u);
      }

      ASLoggingInitialize();
      v19 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "RelationshipManager not notifying via BB and not auto-accepting", buf, 2u);
      }
    }

    else
    {
      v6 = [*(a1 + 32) isFriendshipActive];
      ASLoggingInitialize();
      v7 = *MEMORY[0x277CE9008];
      v8 = os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager friendship already active for this person, automatically accepting", buf, 2u);
        }

        v9 = *(a1 + 40);
        v10 = [*(a1 + 48) UUID];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_385;
        v20[3] = &unk_278C4C178;
        v21 = *(a1 + 72);
        [v9 acceptInviteRequestFromFriendWithUUID:v10 completion:v20];

        return;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager notifying via user notifications", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
      [WeakRetained updateFitnessAppBadgeCount];

      v13 = objc_loadWeakRetained((*(a1 + 40) + 40));
      [v13 showInviteRequestFromContact:*(a1 + 48) withPostingStyle:0];

      v14 = *(a1 + 40);
      v15 = [*(a1 + 56) activityDataPreview];
      v16 = [*(a1 + 48) UUID];
      [v14 _processActivityDataPreview:v15 friendUUID:v16];
    }

    (*(*(a1 + 72) + 16))();
    return;
  }

  v11 = *(*(a1 + 72) + 16);

  v11();
}

uint64_t __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_385(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (((a3 == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)messageCenter:(id)center didReceiveInviteResponse:(id)response fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  addressCopy = address;
  completionCopy = completion;
  ASLoggingInitialize();
  v15 = MEMORY[0x277CE9008];
  v16 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    inviteeCloudKitAddress = [responseCopy inviteeCloudKitAddress];
    *buf = 138412546;
    v36 = addressCopy;
    v37 = 2112;
    v38 = inviteeCloudKitAddress;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "RelationshipManager received invite response from %@, cloudKitAddress=%@", buf, 0x16u);
  }

  ASLoggingInitialize();
  v19 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    handshakeToken = [responseCopy handshakeToken];
    inviteeBuildNumber = [responseCopy inviteeBuildNumber];
    inviteeVersion = [responseCopy inviteeVersion];
    *buf = 138412802;
    v36 = handshakeToken;
    v37 = 2114;
    v38 = inviteeBuildNumber;
    v39 = 1024;
    v40 = inviteeVersion;
    _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "RelationshipManager response info: handshakeToken=%@, buildNumber=%{public}@, version=%d", buf, 0x1Cu);
  }

  if ([(ASRelationshipManager *)self _appIsInstalled])
  {
    v24 = ASCloudKitGroupSharingSetup();
    WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke;
    v29[3] = &unk_278C4D2C8;
    v34 = completionCopy;
    v29[4] = self;
    v30 = responseCopy;
    v31 = v24;
    v32 = centerCopy;
    v33 = addressCopy;
    v26 = v24;
    [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v26 completion:v29];
  }

  else
  {
    ASLoggingInitialize();
    v27 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing response because activity app is not installed, persisting for later delivery", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v9 = *(a1 + 72);
    v10 = *(*(a1 + 72) + 16);

    v10();
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2;
    v12[3] = &unk_278C4E330;
    v11 = *(a1 + 32);
    v4 = *(v11 + 80);
    v5 = *(&v11 + 1);
    v16 = *(a1 + 72);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v13 = v11;
    v14 = v8;
    v15 = *(a1 + 64);
    [v4 performTransaction:v12];
  }
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 5;
  v6 = a1 + 4;
  v5 = a1[4];
  v7 = [a1[5] handshakeToken];
  v8 = [v5 _contactWithOutgoingHandshakeToken:v7];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(*v6 + 7);
    v10 = [WeakRetained isInviteVersionCompatible:{objc_msgSend(*v4, "inviteeVersion")}];

    if ((v10 & 1) == 0)
    {
      ASLoggingInitialize();
      v18 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_1(a1 + 4, v18, a1 + 5);
      }

      v19 = objc_loadWeakRetained(*v6 + 7);
      v20 = [v19 inviteCompatibilityVersion];
      v21 = [*v4 inviteeVersion];

      v22 = objc_loadWeakRetained(*v6 + 5);
      v23 = v22;
      if (v20 >= v21)
      {
        [v22 showVersionTooHighForOutgoingInviteTo:v8];
      }

      else
      {
        [v22 showVersionTooLowForOutgoingInviteTo:v8];
      }

      v3[2](v3);
      (*(a1[9] + 2))();
      v24 = a1[4];
      v11 = [v8 UUID];
      [v24 sendWithdrawInviteRequestToFriendWithUUID:v11 completion:0];
      goto LABEL_16;
    }

    if ([*v4 responseCode] == 1)
    {
      v11 = [*v6 _relationshipFromContact:v8];
      if ([v11 hasOutgoingInviteRequest])
      {
        [v11 insertEventWithType:101];
        v12 = a1[4];
        v13 = a1[6];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_387;
        v25[3] = &unk_278C4E308;
        v32 = a1[9];
        v14 = v3;
        v15 = a1[4];
        v16 = a1[5];
        v33 = v14;
        v25[4] = v15;
        v26 = v16;
        v27 = a1[6];
        v28 = v11;
        v29 = v8;
        v30 = a1[7];
        v31 = a1[8];
        [v12 _queue_fetchSharesForRelationship:v28 cloudKitGroup:v13 completion:v25];
      }

      else
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
        {
          __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_2();
        }

        (*(a1[9] + 2))();
        v3[2](v3);
      }

LABEL_16:

      goto LABEL_17;
    }

    v3[2](v3);
    (*(a1[9] + 2))();
  }

  else
  {
    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_3(a1 + 5, v17);
    }

    (*(a1[9] + 2))();
    v3[2](v3);
  }

LABEL_17:
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_387(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 || (a2 & 1) == 0)
  {
    (*(*(a1 + 88) + 16))();
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) inviteeCloudKitAddress];
    v35[0] = v9;
    v35[1] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v14 = *(a1 + 48);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_388;
    v27[3] = &unk_278C4E2E0;
    v15 = *(a1 + 88);
    v16 = *(a1 + 96);
    v26 = *(a1 + 32);
    v17 = *(&v26 + 1);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    v28 = v26;
    v29 = v20;
    v30 = *(a1 + 48);
    v31 = v9;
    v32 = v10;
    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    *&v24 = v15;
    *(&v24 + 1) = v16;
    v33 = v23;
    v34 = v24;
    [v11 _queue_addPersonWithCloudKitAddress:v12 toShares:v13 cloudKitGroup:v14 completion:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_388(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v11 = *(a1 + 104);
    (*(*(a1 + 104) + 16))();
    v12 = *(*(a1 + 112) + 16);

    v12();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) inviteeShareLocations];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3;
    v13[3] = &unk_278C4E2B8;
    v22 = *(a1 + 104);
    v23 = *(a1 + 112);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    v20 = *(a1 + 88);
    v21 = *(a1 + 96);
    [v4 _queue_acceptShares:v5 forRelationship:v6 contact:v7 cloudKitGroup:v8 completion:v13];
  }
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a3 || (a2 & 1) == 0)
  {
    (*(*(a1 + 96) + 16))();
    (*(*(a1 + 104) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) inviteeCloudKitAddress];
    [v7 setCloudKitAddress:v8];

    v9 = [v7 isFriendshipActive];
    [v7 insertEventWithType:103];
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_4;
    v17[3] = &unk_278C4E290;
    v23 = *(a1 + 104);
    v24 = *(a1 + 96);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    *&v15 = *(a1 + 32);
    *(&v15 + 1) = *(a1 + 40);
    *&v16 = v13;
    *(&v16 + 1) = v14;
    v18 = v16;
    v19 = v15;
    v25 = v9;
    v20 = *(a1 + 48);
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    [v11 _queue_saveRelationship:v7 contact:v10 activity:0 cloudKitGroup:v12 completion:v17];
  }
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_4(uint64_t a1, char a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 88) + 16))();
  if (a3 || (a2 & 1) == 0)
  {
    v18 = *(*(a1 + 96) + 16);
    v19 = *MEMORY[0x277D85DE8];

    v18();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CE90C8]);
    v7 = [*(a1 + 32) URL];
    v8 = [v7 absoluteString];
    [v6 setActivityShareURL:v8];

    v9 = [*(a1 + 40) URL];
    v10 = [v9 absoluteString];
    [v6 setRelationshipShareURL:v10];

    v11 = objc_alloc_init(MEMORY[0x277CE9090]);
    v12 = [*(a1 + 48) handshakeToken];
    [v11 setHandshakeToken:v12];

    [v11 setInviterShareLocations:v6];
    v13 = [*(a1 + 56) _currentActivityDataPreview];
    [v11 setActivityDataPreview:v13];

    v14 = MEMORY[0x277CE9008];
    if ((*(a1 + 104) & 1) == 0)
    {
      v15 = [*(a1 + 56) _remoteRelationshipFromContact:*(a1 + 64)];
      v16 = [v15 isFriendshipActive];

      if (v16)
      {
        ASLoggingInitialize();
        v17 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "RelationshipManager not inserting a placeholder began - remote side is already active", buf, 2u);
        }
      }

      else
      {
        v20 = *(a1 + 56);
        v21 = [*(a1 + 64) UUID];
        [v20 _queue_insertPlaceholderFriendshipDidBeginForContactWithUUID:v21];
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 48));
      [WeakRetained updateFitnessAppBadgeCount];

      ASLoggingInitialize();
      v23 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "RelationshipManager accept received and processed, notify via BB", buf, 2u);
      }

      v24 = objc_loadWeakRetained((*(a1 + 56) + 40));
      [v24 showInviteAcceptResponseFrom:*(a1 + 64)];
    }

    v25 = *(a1 + 56);
    v26 = [*(a1 + 48) activityDataPreview];
    v27 = [*(a1 + 64) UUID];
    [v25 _processActivityDataPreview:v26 friendUUID:v27];

    ASLoggingInitialize();
    v28 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [v11 handshakeToken];
      *buf = 138412290;
      v37 = v30;
      _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "RelationshipManager sending finalize handshake with token: %@", buf, 0xCu);
    }

    v31 = *(a1 + 72);
    v32 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 80)];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_390;
    v34[3] = &unk_278C4C178;
    v35 = *(a1 + 96);
    [v31 sendFinalizeHandshake:v11 toDestinations:v32 completion:v34];

    v33 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_390(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (((a3 == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)messageCenter:(id)center didReceiveFinalizeHandshake:(id)handshake fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  handshakeCopy = handshake;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke;
  v14[3] = &unk_278C4D5C8;
  v15 = handshakeCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = handshakeCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v14];
}

void __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = v5;
    v8 = [v6 handshakeToken];
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager received final handshake, token: %@", buf, 0xCu);
  }

  v9 = a1[5];
  v10 = [a1[4] handshakeToken];
  v11 = [v9 _contactWithIncomingHandshakeToken:v10];

  if (v11)
  {
    v12 = [a1[5] _relationshipFromContact:v11];
    if ([v12 hasIncomingInviteRequest])
    {
      v13 = a1[5];
      v14 = [a1[4] activityDataPreview];
      v15 = [v11 UUID];
      [v13 _processActivityDataPreview:v14 friendUUID:v15];

      v16 = ASCloudKitGroupSharingSetup();
      v17 = a1[5];
      v18 = [a1[4] inviterShareLocations];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_391;
      v22[3] = &unk_278C4E358;
      v22[4] = a1[5];
      v23 = v11;
      v25 = a1[6];
      v26 = v3;
      v24 = v16;
      v19 = v16;
      [v17 _queue_acceptShares:v18 forRelationship:v12 contact:v23 cloudKitGroup:v19 completion:v22];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_cold_1();
      }

      (*(a1[6] + 2))();
      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    v20 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_3(a1 + 4, v20);
    }

    (*(a1[6] + 2))();
    v3[2](v3);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_391(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a3 || (a2 & 1) == 0)
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) UUID];
    [v14 _queue_removePlaceholderRelationshipBeganForContactWithUUID:v15 success:0];

    (*(*(a1 + 56) + 16))();
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [v7 insertEventWithType:103];
    v16 = *(a1 + 32);
    v9 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2;
    v17[3] = &unk_278C4DDE8;
    v10 = *(&v16 + 1);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v18 = v16;
    v19 = v13;
    [v16 _queue_saveRelationship:v8 contact:v10 activity:0 cloudKitGroup:v9 completion:v17];
  }
}

uint64_t __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3 || (a2 & 1) == 0)
  {
    v11 = [*(a1 + 40) UUID];
    [v4 _queue_removePlaceholderRelationshipBeganForContactWithUUID:v11 success:0];

    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    v5 = [*(a1 + 32) _remoteRelationshipFromContact:*(a1 + 40)];
    v6 = [v5 isFriendshipActive];

    if (v6)
    {
      ASLoggingInitialize();
      v7 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager remote relationship is already active, remove placeholder", v13, 2u);
      }

      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) UUID];
      [v8 _queue_removePlaceholderRelationshipBeganForContactWithUUID:v9 success:1];
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();
  return (*(*(a1 + 56) + 16))();
}

- (void)messageCenter:(id)center didReceiveWithdrawInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v11 = ASCloudKitGroupSharingSetup();
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke;
  v15[3] = &unk_278C4E178;
  v16 = requestCopy;
  v17 = completionCopy;
  v15[4] = self;
  v13 = requestCopy;
  v14 = completionCopy;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v11 completion:v15];
}

void __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2;
    block[3] = &unk_278C4BA30;
    block[4] = v5;
    v10 = v4;
    v11 = *(a1 + 48);
    dispatch_async(v6, block);
  }
}

void __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] handshakeToken];
  v4 = [v2 _contactWithIncomingHandshakeToken:v3];

  ASLoggingInitialize();
  v5 = MEMORY[0x277CE9008];
  v6 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = v6;
    v9 = [v7 handshakeToken];
    v10 = [v4 displayName];
    *buf = 138412546;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "RelationshipManager received withdraw invite, token: %@, person: %@", buf, 0x16u);
  }

  v11 = [a1[4] _relationshipFromContact:v4];
  v12 = v11;
  if (v11)
  {
    if (([v11 isAwaitingInviteResponse] & 1) == 0)
    {
      ASLoggingInitialize();
      v13 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find a pending invite to withdraw - this invite may already have been acted upon", buf, 2u);
      }

      ASLoggingInitialize();
      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v12;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "RelationshipManager current state is %{public}@", buf, 0xCu);
      }

      ASLoggingInitialize();
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "RelationshipManager processing withdraw will continue anyway", buf, 2u);
      }
    }

    v16 = a1[4];
    v17 = [v12 UUID];
    v18 = ASCloudKitGroupSharingSetup();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_392;
    v23[3] = &unk_278C4E178;
    v19 = a1[6];
    v20 = a1[4];
    v25 = v19;
    v23[4] = v20;
    v24 = v4;
    [v16 _queue_removeFriendWithUUID:v17 eventType:102 activity:0 cloudKitGroup:v18 completion:v23];
  }

  else
  {
    ASLoggingInitialize();
    v21 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "Withdraw invite token doesn't match any relationship, ignoring", buf, 2u);
    }

    (*(a1[6] + 2))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __130__ASRelationshipManager_messageCenter_didReceiveWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_392(void *a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 48));
    [WeakRetained updateFitnessAppBadgeCount];

    v5 = objc_loadWeakRetained((a1[4] + 40));
    [v5 withdrawInviteNotificationsForContact:a1[5]];
  }

  v6 = *(a1[6] + 16);

  return v6();
}

- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type
{
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__ASRelationshipManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke;
  v5[3] = &unk_278C4C9B0;
  v5[4] = self;
  v5[5] = type;
  dispatch_async(serialQueue, v5);
}

- (void)cloudKitManager:(id)manager didReceiveNewRelationships:(id)relationships fromRecordZoneWithID:(id)d moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  comingCopy = coming;
  v24 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  handlerCopy = handler;
  ASLoggingInitialize();
  v12 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = comingCopy;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "RelationshipManager received new relationship records from CloudKit, more coming: %{BOOL}d", buf, 8u);
  }

  transactionQueue = self->_transactionQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __124__ASRelationshipManager_cloudKitManager_didReceiveNewRelationships_fromRecordZoneWithID_moreComing_changesProcessedHandler___block_invoke;
  v17[3] = &unk_278C4E380;
  v18 = relationshipsCopy;
  selfCopy = self;
  v21 = comingCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = relationshipsCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __124__ASRelationshipManager_cloudKitManager_didReceiveNewRelationships_fromRecordZoneWithID_moreComing_changesProcessedHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 systemFieldsOnlyRecord];
        v10 = [v9 recordID];

        v11 = [*(*(a1 + 40) + 104) objectForKeyedSubscript:v10];

        if (v11)
        {
          ASLoggingInitialize();
          v12 = *MEMORY[0x277CE9008];
          if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v10;
            v29 = 2112;
            v30 = v8;
            _os_log_error_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_ERROR, "RelationshipManager received multiple local relationships on a single record ID: %@, relationship: %@", buf, 0x16u);
          }
        }

        [*(*(a1 + 40) + 104) setObject:v8 forKeyedSubscript:v10];
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
        v14 = [v8 UUID];
        v15 = [WeakRetained contactWithUUID:v14];

        v16 = [v15 primaryRelationship];
        if ([v16 isAwaitingInviteResponse])
        {
          v17 = [v8 isAwaitingInviteResponse];

          if (v17)
          {
            goto LABEL_13;
          }

          v16 = objc_loadWeakRetained((*(a1 + 40) + 40));
          [v16 withdrawInviteNotificationsForContact:v15];
        }

LABEL_13:
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18[13]];
    [v18 _queue_reconcileCloudKitRelationships:v19];

    [*(*(a1 + 40) + 104) removeAllObjects];
    v20 = objc_loadWeakRetained((*(a1 + 40) + 48));
    [v20 updateFitnessAppBadgeCount];
  }

  (*(*(a1 + 48) + 16))();
  v22[2](v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitManager:(id)manager didReceiveNewRemoteRelationships:(id)relationships fromRecordZoneWithID:(id)d moreComing:(BOOL)coming activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler
{
  relationshipsCopy = relationships;
  activityCopy = activity;
  groupCopy = group;
  handlerCopy = handler;
  ASLoggingInitialize();
  v17 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "RelationshipManager received new remote relationship records from CloudKit", buf, 2u);
  }

  transactionQueue = self->_transactionQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke;
  v23[3] = &unk_278C4E3A8;
  v24 = relationshipsCopy;
  selfCopy = self;
  comingCopy = coming;
  v26 = activityCopy;
  v27 = groupCopy;
  v28 = handlerCopy;
  v19 = handlerCopy;
  v20 = groupCopy;
  v21 = activityCopy;
  v22 = relationshipsCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v23];
}

void __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) firstObject];
  if ([*(a1 + 32) count] >= 2)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1();
    }

    v24 = v3;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v10 timestampForMostRecentRelationshipEvent];
          v12 = [v4 timestampForMostRecentRelationshipEvent];
          v13 = [v11 compare:v12];

          if (v13 == 1)
          {
            v14 = v10;

            v4 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    v3 = v24;
  }

  v15 = *(*(a1 + 40) + 112);
  v16 = [v4 systemFieldsOnlyRecord];
  v17 = [v16 recordID];
  [v15 setObject:v4 forKeyedSubscript:v17];

  if (*(a1 + 72))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18[14]];
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke_393;
    v25[3] = &unk_278C4B228;
    v26 = *(a1 + 64);
    [v18 _queue_processRemoteRelationships:v19 activity:v20 cloudKitGroup:v21 completion:v25];

    [*(*(a1 + 40) + 112) removeAllObjects];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained updateFitnessAppBadgeCount];
  }

  v3[2](v3);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke_393(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "RelationshipManager finished processing remote relationships", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)notificationManager:(id)manager didReceiveActionResponse:(int64_t)response fromContactWithUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE9008];
  v9 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    responseCopy = response;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager received BB response: %ld in ASActivitySharingManager", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v11 = [WeakRetained contactWithUUID:dCopy];

  if (v11)
  {
    if (response == 1)
    {
      v12 = objc_loadWeakRetained(&self->_gatewayManager);
      hasReachedMaximumNumberOfFriends = [v12 hasReachedMaximumNumberOfFriends];

      if (hasReachedMaximumNumberOfFriends)
      {
        v14 = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
        [v14 showMaxNumberOfFriendsError];
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __90__ASRelationshipManager_notificationManager_didReceiveActionResponse_fromContactWithUUID___block_invoke;
        v16[3] = &unk_278C4C308;
        v16[4] = self;
        v17 = v11;
        [(ASRelationshipManager *)self acceptInviteRequestFromFriendWithUUID:dCopy completion:v16];
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager notificationManager:didReceiveActionResponse:fromContactWithUUID:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __90__ASRelationshipManager_notificationManager_didReceiveActionResponse_fromContactWithUUID___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained showErrorAcceptingInviteFrom:*(a1 + 40)];
  }
}

- (void)_processPersistedMessagesIfNeeded
{
  if ([(ASRelationshipManager *)self _appIsInstalled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_gatewayManager);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__ASRelationshipManager__processPersistedMessagesIfNeeded__block_invoke;
    v5[3] = &unk_278C4E3D0;
    v5[4] = self;
    [WeakRetained gatewayStatusWithCompletion:v5];
  }

  else
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing persisted messages, activity app is not installed", buf, 2u);
    }
  }
}

void __58__ASRelationshipManager__processPersistedMessagesIfNeeded__block_invoke(uint64_t a1, int a2, char a3, int a4, void *a5)
{
  v9 = a5;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE9008];
  if (!a2 || !a4 || v9 || (a3 & 1) != 0)
  {
    v11 = *MEMORY[0x277CE9008];
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __58__ASRelationshipManager__processPersistedMessagesIfNeeded__block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing persisted invitation messages at this time", v12, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "RelationshipManager processing persisted invitation messages if available", buf, 2u);
    }

    [*(*(a1 + 32) + 160) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_396];
  }
}

void __97__ASRelationshipManager__queue_removeFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained relationshipManager:*(a1 + 32) removeFriendWithUUID:*(a1 + 40) eventType:*(a1 + 64) cloudKitGroup:*(a1 + 48) completion:*(a1 + 56)];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager ending friendship with friend with UUID: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v8 = [WeakRetained contactWithUUID:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) _relationshipFromContact:v8];
    if (([v9 isFriendshipActive] & 1) == 0)
    {
      ASLoggingInitialize();
      v10 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "RelationshipManager found friendship is not currently active. Still attempting to remove person from shares, just to be safe", buf, 2u);
      }
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_397;
    v32[3] = &unk_278C4E3F8;
    v11 = v9;
    v42 = *(a1 + 80);
    v12 = *(a1 + 40);
    v33 = v11;
    v34 = v12;
    v35 = v8;
    v36 = *(a1 + 56);
    v37 = *(a1 + 64);
    v38 = *(a1 + 48);
    v13 = v3;
    v40 = v13;
    v41 = *(a1 + 72);
    v39 = *(a1 + 32);
    v14 = MEMORY[0x23EF0EB00](v32);
    v15 = [v11 cloudKitAddress];

    ASLoggingInitialize();
    v16 = *v4;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = v16;
        v19 = [v11 cloudKitAddress];
        *buf = 138412290;
        v44 = v19;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "RelationshipManager removing contact with cloudKitAddress %@ from activity data share", buf, 0xCu);
      }

      v20 = objc_loadWeakRetained((*(a1 + 40) + 24));
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_398;
      v25[3] = &unk_278C4E470;
      v25[4] = *(a1 + 40);
      v26 = v11;
      v27 = *(a1 + 64);
      v28 = *(a1 + 48);
      v29 = v13;
      v30 = *(a1 + 72);
      v31 = v14;
      [v20 fetchOrCreateActivityDataShareWithGroup:v21 activity:v22 completion:v25];
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "RelationshipManager contact does not have a cloudKitAddress, not attempting to remove from share", buf, 2u);
      }

      v14[2](v14);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager sendWithdrawInviteRequestToFriendWithUUID:completion:];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:3 userInfo:0];
    v23 = objc_loadWeakRetained((*(a1 + 40) + 32));
    [v23 removePlaceholderContactWithToken:*(a1 + 48)];

    v3[2](v3);
    _NotifyOnMainQueue(0, v11, *(a1 + 72));
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_397(uint64_t a1)
{
  [*(a1 + 32) insertEventWithType:*(a1 + 104)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_2;
  v7[3] = &unk_278C4E358;
  v7[4] = v2;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v9 = *(a1 + 80);
  [v2 _queue_saveRelationship:v3 contact:v4 activity:v5 cloudKitGroup:v6 completion:v7];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 32));
  [WeakRetained removePlaceholderContactWithToken:*(a1 + 40)];

  (*(*(a1 + 56) + 16))();
  _NotifyOnMainQueue(a2, v6, *(a1 + 64));

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3;
  v8[3] = &unk_278C4B250;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained deleteActivityDataForFriendWithUUID:*(a1 + 40)];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v3 removeUnusedTemplatesForFriendWithUUID:*(a1 + 40)];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_398(uint64_t a1, int a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 && a2 && v8)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v11 = [*(a1 + 40) cloudKitAddress];
    v21[0] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_2_399;
    v16[3] = &unk_278C4E448;
    v16[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    [WeakRetained removeParticipantWithCloudKitAddress:v11 fromShares:v12 group:v13 completion:v16];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_398_cold_1();
    }

    v14 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v14 removePlaceholderContactWithToken:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
    _NotifyOnMainQueue(0, v7, *(a1 + 72));
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_2_399(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3_400;
  block[3] = &unk_278C4E420;
  v18 = a2;
  v14 = v5;
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v15 = v12;
  v16 = v10;
  v17 = *(a1 + 64);
  v11 = v5;
  dispatch_async(v6, block);
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3_400(uint64_t a1)
{
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    v3 = *(a1 + 72);
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3_400_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
    [WeakRetained removePlaceholderContactWithToken:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
    _NotifyOnMainQueue(0, *(a1 + 32), *(a1 + 64));
  }
}

- (id)_contactWithInviteRequest:(id)request fromSender:(id)sender
{
  v35[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  senderCopy = sender;
  v35[0] = senderCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  inviterCloudKitAddress = [requestCopy inviterCloudKitAddress];

  if (inviterCloudKitAddress)
  {
    inviterCloudKitAddress2 = [requestCopy inviterCloudKitAddress];
    v11 = [v8 arrayByAddingObject:inviterCloudKitAddress2];

    v8 = v11;
  }

  inviterCallerID = [requestCopy inviterCallerID];

  if (inviterCallerID)
  {
    inviterCallerID2 = [requestCopy inviterCallerID];
    v14 = [v8 arrayByAddingObject:inviterCallerID2];

    v8 = v14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v16 = [WeakRetained contactWithDestinations:v8];

  if (!v16)
  {
    ASLoggingInitialize();
    v30 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "RelationshipManager couldn't find match, creating new contact", v33, 2u);
    }

    v26 = objc_loadWeakRetained(&self->_contactsManager);
    v29 = [v26 createContactWithDestinations:v8];
    goto LABEL_16;
  }

  inviterCloudKitAddress3 = [requestCopy inviterCloudKitAddress];
  if (inviterCloudKitAddress3)
  {
    v18 = inviterCloudKitAddress3;
    v19 = [(ASRelationshipManager *)self _relationshipFromContact:v16];
    cloudKitAddress = [v19 cloudKitAddress];
    inviterCloudKitAddress4 = [requestCopy inviterCloudKitAddress];
    v22 = [cloudKitAddress isEqualToString:inviterCloudKitAddress4];

    if ((v22 & 1) == 0)
    {
      ASLoggingInitialize();
      v23 = MEMORY[0x277CE9008];
      v24 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "RelationshipManager found a match, but the cloudKit address was different", v33, 2u);
      }

      ASLoggingInitialize();
      v25 = *v23;
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "RelationshipManager creating a new contact for this unique cloudKit address", v33, 2u);
      }

      v26 = objc_loadWeakRetained(&self->_contactsManager);
      inviterCloudKitAddress5 = [requestCopy inviterCloudKitAddress];
      v34 = inviterCloudKitAddress5;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      v29 = [v26 createContactWithDestinations:v28];

LABEL_16:
      v16 = v29;
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_contactWithOutgoingHandshakeToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v6 = ASContactForOutgoingHandshakeTokenWithManager(tokenCopy, WeakRetained, 0);

  return v6;
}

- (id)_contactWithIncomingHandshakeToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ASRelationshipManager__contactWithIncomingHandshakeToken___block_invoke;
  v9[3] = &unk_278C4E498;
  v9[4] = self;
  v10 = tokenCopy;
  v6 = tokenCopy;
  v7 = [WeakRetained contactMatchingCriteriaBlock:v9];

  return v7;
}

uint64_t __60__ASRelationshipManager__contactWithIncomingHandshakeToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _relationshipFromContact:a2];
  v4 = [v3 incomingHandshakeToken];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  return v5;
}

- (id)_contactWithRemoteRelationshipRecordZoneID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ASRelationshipManager__contactWithRemoteRelationshipRecordZoneID___block_invoke;
  v9[3] = &unk_278C4E498;
  v9[4] = self;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [WeakRetained contactMatchingCriteriaBlock:v9];

  return v7;
}

uint64_t __68__ASRelationshipManager__contactWithRemoteRelationshipRecordZoneID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _relationshipFromContact:a2];
  v4 = [v3 remoteRelationshipShareID];
  v5 = [v4 zoneID];
  v6 = [v5 isEqual:*(a1 + 40)];

  return v6;
}

- (void)_insertInviteForContact:(id)contact destination:(id)destination serviceIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  identifierCopy = identifier;
  destinationCopy = destination;
  v11 = [(ASRelationshipManager *)self _relationshipFromContact:contactCopy];
  destinations = [contactCopy destinations];
  [v11 setAddresses:destinations];

  v13 = ASSanitizedContactDestination();

  [v11 setPreferredReachableAddress:v13];
  [v11 setPreferredReachableService:identifierCopy];

  outgoingHandshakeToken = [v11 outgoingHandshakeToken];

  if (outgoingHandshakeToken)
  {
    ASLoggingInitialize();
    v15 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      outgoingHandshakeToken2 = [v11 outgoingHandshakeToken];
      *v24 = 138412290;
      *&v24[4] = outgoingHandshakeToken2;
      v18 = "RelationshipManager outgoing handshake token already exists for this person: %@";
LABEL_6:
      _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, v18, v24, 0xCu);
    }
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v11 setOutgoingHandshakeToken:uUIDString];

    ASLoggingInitialize();
    v21 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v21;
      outgoingHandshakeToken2 = [v11 outgoingHandshakeToken];
      *v24 = 138412290;
      *&v24[4] = outgoingHandshakeToken2;
      v18 = "RelationshipManager creating new outgoing handshake token: %@";
      goto LABEL_6;
    }
  }

  [v11 insertEventWithType:{1, *v24}];
  relationshipStorage = [contactCopy relationshipStorage];
  [relationshipStorage setLegacyRelationship:v11];
  [contactCopy setRelationshipStorage:relationshipStorage];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removePlaceholderRelationshipEventWithToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  ASRemovePlaceholderForToken(tokenCopy, WeakRetained);
}

- (id)_contactWithUUIDPreferringPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v6 = ASContactPreferringPlaceholderForUUID(placeholdersCopy, WeakRetained);

  return v6;
}

- (void)_queue_insertPlaceholderFriendshipDidBeginForContactWithUUID:(id)d
{
  serialQueue = self->_serialQueue;
  dCopy = d;
  dispatch_assert_queue_V2(serialQueue);
  [(ASRelationshipFinalizationStore *)self->_finalizingStore insertPlaceholderForEventTypes:&unk_2850F5240 contactUUID:dCopy];
}

- (void)saveRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group activity:(id)activity completion:(id)completion
{
  relationshipCopy = relationship;
  contactCopy = contact;
  groupCopy = group;
  activityCopy = activity;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__ASRelationshipManager_saveRelationship_contact_cloudKitGroup_activity_completion___block_invoke;
  v23[3] = &unk_278C4E4E8;
  v23[4] = self;
  v24 = relationshipCopy;
  v25 = contactCopy;
  v26 = activityCopy;
  v27 = groupCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = groupCopy;
  v20 = activityCopy;
  v21 = contactCopy;
  v22 = relationshipCopy;
  dispatch_async(serialQueue, v23);
}

void __84__ASRelationshipManager_saveRelationship_contact_cloudKitGroup_activity_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__ASRelationshipManager_saveRelationship_contact_cloudKitGroup_activity_completion___block_invoke_2;
  v6[3] = &unk_278C4E4C0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 _queue_saveRelationship:v2 contact:v3 activity:v4 cloudKitGroup:v5 completion:v6];
}

- (void)saveRelationship:(id)relationship contact:(id)contact extraRecordsToSave:(id)save extraRecordIDsToDelete:(id)delete cloudKitGroup:(id)group activity:(id)activity completion:(id)completion
{
  relationshipCopy = relationship;
  contactCopy = contact;
  saveCopy = save;
  deleteCopy = delete;
  groupCopy = group;
  activityCopy = activity;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __126__ASRelationshipManager_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_cloudKitGroup_activity_completion___block_invoke;
  v30[3] = &unk_278C4E538;
  v30[4] = self;
  v31 = relationshipCopy;
  v32 = contactCopy;
  v33 = saveCopy;
  v34 = deleteCopy;
  v35 = activityCopy;
  v36 = groupCopy;
  v37 = completionCopy;
  v23 = completionCopy;
  v24 = groupCopy;
  v25 = activityCopy;
  v26 = deleteCopy;
  v27 = saveCopy;
  v28 = contactCopy;
  v29 = relationshipCopy;
  dispatch_async(serialQueue, v30);
}

void __126__ASRelationshipManager_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_cloudKitGroup_activity_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__ASRelationshipManager_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_cloudKitGroup_activity_completion___block_invoke_2;
  v8[3] = &unk_278C4E510;
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  [v1 _queue_saveRelationship:v2 contact:v3 extraRecordsToSave:v4 extraRecordIDsToDelete:v5 activity:v6 cloudKitGroup:v7 completion:v8];
}

- (void)saveRelationships:(id)relationships extraRecordsToSave:(id)save cloudKitGroup:(id)group activity:(id)activity completion:(id)completion
{
  relationshipsCopy = relationships;
  saveCopy = save;
  groupCopy = group;
  activityCopy = activity;
  completionCopy = completion;
  if ([relationshipsCopy count])
  {
    transactionQueue = self->_transactionQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke;
    v20[3] = &unk_278C4E588;
    v21 = relationshipsCopy;
    v22 = saveCopy;
    selfCopy = self;
    v24 = activityCopy;
    v25 = groupCopy;
    v26 = completionCopy;
    [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v20];

    v18 = v21;
  }

  else
  {
    ASLoggingInitialize();
    v19 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find any relationships to save", buf, 2u);
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:10 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v18, 0);
  }
}

void __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "RelationshipManager serializing relationship records and saving to CloudKit", buf, 2u);
  }

  v5 = [*(a1 + 32) hk_map:&__block_literal_global_409];
  v6 = [v5 arrayByAddingObjectsFromArray:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke_2;
  v11[3] = &unk_278C4D690;
  v11[4] = *(a1 + 48);
  v12 = *(a1 + 72);
  v13 = v3;
  v10 = v3;
  [WeakRetained saveRecordsIntoPrivateDatabase:v6 priority:2 activity:v8 group:v9 completion:v11];
}

id __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke_407(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ASCloudKitManager relationshipZone];
  v4 = [v2 recordWithZoneID:v3 recordEncryptionType:0];

  return v4;
}

void __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7 && a2)
  {
    v30 = a2;
    v9 = MEMORY[0x277CE9118];
    v29 = v8;
    v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v11 = [v9 relationshipsWithRelationshipAndEventRecords:v10];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      v16 = MEMORY[0x277CE9008];
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
          v20 = [v18 UUID];
          v21 = [WeakRetained contactWithUUID:v20];

          if (v21)
          {
            v22 = [v21 relationshipStorage];
            [v22 setLegacyRelationship:v18];
            [v21 setRelationshipStorage:v22];
            v23 = objc_loadWeakRetained((*(a1 + 32) + 32));
            [v23 saveContact:v21];
          }

          else
          {
            ASLoggingInitialize();
            v24 = *v16;
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
            {
              __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_2_cold_1(&v40, v24, v18, &v41);
            }
          }

          ++v17;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v14);
    }

    v7 = 0;
    LOBYTE(a2) = v30;
    v8 = v29;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__ASRelationshipManager_saveRelationships_extraRecordsToSave_cloudKitGroup_activity_completion___block_invoke_410;
  block[3] = &unk_278C4E560;
  v25 = *(a1 + 40);
  v33 = v8;
  v34 = v25;
  v35 = a2;
  v32 = v7;
  v26 = v8;
  v27 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
  (*(*(a1 + 48) + 16))();

  v28 = *MEMORY[0x277D85DE8];
}

- (void)saveRelationshipAndFetchOrCreateShares:(id)shares contact:(id)contact cloudKitGroup:(id)group completion:(id)completion
{
  sharesCopy = shares;
  contactCopy = contact;
  groupCopy = group;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__ASRelationshipManager_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke;
  block[3] = &unk_278C4E5B0;
  block[4] = self;
  v20 = sharesCopy;
  v21 = contactCopy;
  v22 = groupCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = groupCopy;
  v17 = contactCopy;
  v18 = sharesCopy;
  dispatch_async(serialQueue, block);
}

- (void)acceptShares:(id)shares forRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group completion:(id)completion
{
  sharesCopy = shares;
  relationshipCopy = relationship;
  contactCopy = contact;
  groupCopy = group;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__ASRelationshipManager_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke;
  v23[3] = &unk_278C4E4E8;
  v23[4] = self;
  v24 = sharesCopy;
  v25 = relationshipCopy;
  v26 = contactCopy;
  v27 = groupCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = groupCopy;
  v20 = contactCopy;
  v21 = relationshipCopy;
  v22 = sharesCopy;
  dispatch_async(serialQueue, v23);
}

- (void)_queue_fetchSharesForRelationship:(id)relationship cloudKitGroup:(id)group completion:(id)completion
{
  relationshipCopy = relationship;
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v11 = dispatch_group_create();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__13;
  v43[4] = __Block_byref_object_dispose__13;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__13;
  v41[4] = __Block_byref_object_dispose__13;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__13;
  v39[4] = __Block_byref_object_dispose__13;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__13;
  v37[4] = __Block_byref_object_dispose__13;
  v38 = 0;
  ASLoggingInitialize();
  v12 = MEMORY[0x277CE9008];
  v13 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "RelationshipManager fetching activity data share", buf, 2u);
  }

  dispatch_group_enter(v11);
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke;
  v32[3] = &unk_278C4E5D8;
  v34 = v39;
  v35 = v43;
  v15 = v11;
  v33 = v15;
  [WeakRetained fetchOrCreateActivityDataShareWithGroup:groupCopy activity:0 completion:v32];

  dispatch_group_enter(v15);
  relationshipShareID = [relationshipCopy relationshipShareID];

  if (relationshipShareID)
  {
    v17 = objc_loadWeakRetained(&self->_cloudKitManager);
    relationshipShareID2 = [relationshipCopy relationshipShareID];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_411;
    v28[3] = &unk_278C4E5D8;
    v30 = v37;
    v31 = v41;
    v29 = v15;
    [v17 fetchShareWithShareRecordID:relationshipShareID2 activity:0 group:groupCopy completion:v28];
  }

  else
  {
    ASLoggingInitialize();
    v19 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "RelationshipManager failed to fetch relationship share because relationship had no archived share ID", buf, 2u);
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_412;
  block[3] = &unk_278C4C898;
  v25 = v37;
  v26 = v43;
  v27 = v41;
  v23 = completionCopy;
  v24 = v39;
  v21 = completionCopy;
  dispatch_group_notify(v15, serialQueue, block);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

void __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE9008];
  if (!v7 && a2 && v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager successfully fetched activity data share", v15, 2u);
    }

    v10 = 48;
    v11 = v8;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_cold_1();
    }

    v10 = 40;
    v11 = v7;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = v11;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  dispatch_group_leave(*(a1 + 32));
}

void __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_411(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE9008];
  if (!v7 && a2 && v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager successfully fetched relationship share", v15, 2u);
    }

    v10 = 48;
    v11 = v8;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_411_cold_1();
    }

    v10 = 40;
    v11 = v7;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = v11;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_412(void *a1)
{
  v1 = *(*(a1[5] + 8) + 40);
  if (!v1)
  {
    v1 = *(*(a1[6] + 8) + 40);
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v2 = *(*(a1[8] + 8) + 40) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = a1[4];
  v4 = !v2;
  return (*(v3 + 16))(v3, v4, v1);
}

- (void)handleSavedRecords:(id)records forContact:(id)contact completion:(id)completion
{
  recordsCopy = records;
  contactCopy = contact;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ASRelationshipManager_handleSavedRecords_forContact_completion___block_invoke;
  v15[3] = &unk_278C4E600;
  v15[4] = self;
  v16 = recordsCopy;
  v17 = contactCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = contactCopy;
  v14 = recordsCopy;
  dispatch_async(serialQueue, v15);
}

void __66__ASRelationshipManager_handleSavedRecords_forContact_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  v5 = [v2 _queue_handleSavedRecords:v3 forContact:v4 error:&v7];
  v6 = v7;
  (*(a1[7] + 16))();
}

- (id)_queue_handleSavedRecords:(id)records forContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  recordsCopy = records;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v11 = ASSaveRelationshipRecordForContact(recordsCopy, contactCopy, WeakRetained, error);

  return v11;
}

- (void)insertRemoteEventType:(unsigned __int16)type onContactWithUUID:(id)d cloudType:(unint64_t)cloudType completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ASRelationshipManager_insertRemoteEventType_onContactWithUUID_cloudType_completion___block_invoke;
  block[3] = &unk_278C4E628;
  block[4] = self;
  v16 = dCopy;
  typeCopy = type;
  v17 = completionCopy;
  cloudTypeCopy = cloudType;
  v13 = completionCopy;
  v14 = dCopy;
  dispatch_async(serialQueue, block);
}

void __86__ASRelationshipManager_insertRemoteEventType_onContactWithUUID_cloudType_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v6 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v3 = [v6 relationshipStorage];
  v4 = [v3 remoteRelationshipForCloudType:*(a1 + 56)];
  [v4 insertEventWithType:*(a1 + 64)];
  [v3 updateRemoteRelationship:v4 cloudType:*(a1 + 56)];
  [v6 setRelationshipStorage:v3];
  v5 = objc_loadWeakRetained((*(a1 + 32) + 32));
  [v5 saveContact:v6];

  (*(*(a1 + 48) + 16))();
}

- (void)_queue_saveRelationshipAndFetchOrCreateShares:(id)shares contact:(id)contact cloudKitGroup:(id)group completion:(id)completion
{
  sharesCopy = shares;
  contactCopy = contact;
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__13;
  v64[4] = __Block_byref_object_dispose__13;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__13;
  v62[4] = __Block_byref_object_dispose__13;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__13;
  v60[4] = __Block_byref_object_dispose__13;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__13;
  v58[4] = __Block_byref_object_dispose__13;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__13;
  v56[4] = __Block_byref_object_dispose__13;
  v57 = 0;
  v13 = +[ASCloudKitManager relationshipZone];
  v14 = [sharesCopy recordWithZoneID:v13 recordEncryptionType:0];

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke;
  v52[3] = &unk_278C4E5D8;
  v54 = v64;
  v55 = v58;
  v17 = v15;
  v53 = v17;
  [WeakRetained fetchOrCreateActivityDataShareWithGroup:groupCopy activity:0 completion:v52];

  share = [v14 share];

  if (share)
  {
    dispatch_group_enter(v17);
    v19 = objc_loadWeakRetained(&self->_cloudKitManager);
    share2 = [v14 share];
    recordID = [share2 recordID];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_413;
    v48[3] = &unk_278C4E6A0;
    v48[4] = self;
    v51[1] = v56;
    v49 = v17;
    v51[2] = v62;
    v50 = sharesCopy;
    v51[0] = contactCopy;
    v51[3] = v60;
    [v19 fetchShareWithShareRecordID:recordID activity:0 group:groupCopy completion:v48];
    v34 = v17;
    v22 = v14;
    v23 = recordID;
    selfCopy2 = self;
    v25 = completionCopy;
    v26 = sharesCopy;
    v27 = groupCopy;
    v28 = &v49;
    v29 = &v50;
    v30 = v51;

LABEL_7:
    groupCopy = v27;
    sharesCopy = v26;
    completionCopy = v25;
    self = selfCopy2;
    v14 = v22;
    v17 = v34;
    goto LABEL_8;
  }

  if (v14)
  {
    ASLoggingInitialize();
    v31 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v31, OS_LOG_TYPE_DEFAULT, "RelationshipManager creating new relationship share", buf, 2u);
    }

    dispatch_group_enter(v17);
    v19 = objc_loadWeakRetained(&self->_cloudKitManager);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_415;
    v43[3] = &unk_278C4E6F0;
    v43[4] = self;
    v46[1] = v56;
    v44 = sharesCopy;
    v46[2] = v60;
    v45 = contactCopy;
    v46[3] = v62;
    v46[0] = v17;
    [v19 createShareWithRootRecord:v14 otherRecordsToSave:0 completion:v43];
    v34 = v17;
    v22 = v14;
    selfCopy2 = self;
    v25 = completionCopy;
    v26 = sharesCopy;
    v27 = groupCopy;
    v28 = &v44;
    v29 = &v45;
    v30 = v46;
    goto LABEL_7;
  }

LABEL_8:
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_418;
  block[3] = &unk_278C4E718;
  v37 = completionCopy;
  v38 = v58;
  v39 = v56;
  v40 = v60;
  v41 = v64;
  v42 = v62;
  v33 = completionCopy;
  dispatch_group_notify(v17, serialQueue, block);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 && a2 && v9)
  {
    v11 = 40;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_cold_1();
    }

    v11 = 48;
    a4 = a3;
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), a4);
  dispatch_group_leave(*(a1 + 32));
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_413(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2;
  block[3] = &unk_278C4E678;
  v26 = a2;
  v19 = v7;
  v20 = v8;
  v23 = *(a1 + 64);
  v10 = *(a1 + 40);
  v24 = *(a1 + 72);
  *&v11 = v10;
  *(&v11 + 1) = *(a1 + 32);
  v17 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v21 = v17;
  v22 = v14;
  v25 = *(a1 + 80);
  v15 = v8;
  v16 = v7;
  dispatch_async(v9, block);
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 104) == 1 && !*(a1 + 32) && *(a1 + 40))
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "RelationshipManager successfully fetched relationship share", buf, 2u);
    }

    objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 40));
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = ASCloudKitGroupSharingSetup();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_414;
    v8[3] = &unk_278C4E650;
    v7 = *(a1 + 96);
    v10 = *(a1 + 80);
    v11 = v7;
    v9 = *(a1 + 48);
    [v3 _queue_saveRelationship:v4 contact:v5 activity:0 cloudKitGroup:v6 completion:v8];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 32));
    dispatch_group_leave(*(a1 + 48));
  }
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_414(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 UUID];
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager successfully saved relationship record in CloudKit for UUID %{public}@", &v18, 0xCu);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v7;
  v16 = v7;

  dispatch_group_leave(*(a1 + 32));
  v17 = *MEMORY[0x277D85DE8];
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_415(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_416;
  block[3] = &unk_278C4E6C8;
  v38 = a2;
  v29 = v11;
  v30 = v12;
  v26 = *(a1 + 64);
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v31 = v16;
  v32 = v17;
  v33 = v13;
  v34 = v14;
  *&v18 = v26;
  *(&v18 + 1) = *(a1 + 72);
  v27 = v18;
  v19 = *(a1 + 48);
  v37 = *(a1 + 80);
  v20 = *(a1 + 56);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  v35 = v21;
  v36 = v27;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  dispatch_async(v15, block);
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_416(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 120) == 1 && !*(a1 + 32) && (v2 = (a1 + 40), *(a1 + 40)))
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = v5;
      v8 = [v6 UUID];
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager successfully saved relationship record for share in CloudKit for UUID %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
    v11 = [v10 setByAddingObjectsFromArray:*(a1 + 72)];
    v12 = *(a1 + 80);
    v13 = *(*(a1 + 96) + 8);
    obj = *(v13 + 40);
    v14 = [v9 _queue_handleSavedRecords:v11 forContact:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    v15 = *(*(a1 + 104) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v3 = 112;
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_416_cold_1(a1);
    }

    v2 = (a1 + 32);
    v3 = 96;
  }

  objc_storeStrong((*(*(a1 + v3) + 8) + 40), *v2);
  dispatch_group_leave(*(a1 + 88));
  v4 = *MEMORY[0x277D85DE8];
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_418(void *a1)
{
  if (a1[4])
  {
    v2 = *(*(a1[5] + 8) + 40);
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = a1[4];
    }

    else
    {
      v3 = *(*(a1[6] + 8) + 40);
      v5 = a1[4];
      if (v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(*(a1[7] + 8) + 40) != 0;
      }
    }

    v6 = *(*(a1[8] + 8) + 40);
    v7 = *(*(a1[9] + 8) + 40);
    v8 = *(*(a1[7] + 8) + 40);
    v9 = v3;
    (*(v5 + 16))(v5, v4);
  }
}

- (void)_queue_saveRelationship:(id)relationship contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__ASRelationshipManager__queue_saveRelationship_contact_activity_cloudKitGroup_completion___block_invoke;
  v14[3] = &unk_278C4E4C0;
  v15 = completionCopy;
  v13 = completionCopy;
  [(ASRelationshipManager *)self _queue_saveRelationship:relationship contact:contact withExtraRecords:0 activity:activity cloudKitGroup:group completion:v14];
}

uint64_t __91__ASRelationshipManager__queue_saveRelationship_contact_activity_cloudKitGroup_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_saveRelationship:(id)relationship contact:(id)contact withExtraRecords:(id)records activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__ASRelationshipManager__queue_saveRelationship_contact_withExtraRecords_activity_cloudKitGroup_completion___block_invoke;
  v18[3] = &unk_278C4E740;
  v19 = contactCopy;
  v20 = completionCopy;
  v18[4] = self;
  v16 = contactCopy;
  v17 = completionCopy;
  [(ASRelationshipManager *)self _queue_saveRelationship:relationship contact:v16 extraRecordsToSave:records extraRecordIDsToDelete:0 activity:activity cloudKitGroup:group completion:v18];
}

void __108__ASRelationshipManager__queue_saveRelationship_contact_withExtraRecords_activity_cloudKitGroup_completion___block_invoke(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 || (a2 & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __108__ASRelationshipManager__queue_saveRelationship_contact_withExtraRecords_activity_cloudKitGroup_completion___block_invoke_cold_1();
    }

    v15 = a1[6];
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v7, 0);
    }
  }

  else
  {
    v9 = a1[4];
    v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v11 = a1[5];
    v16 = 0;
    v12 = [v9 _queue_handleSavedRecords:v10 forContact:v11 error:&v16];
    v13 = v16;

    v14 = a1[6];
    if (v14)
    {
      (*(v14 + 16))(v14, v12 != 0, v13, v12);
    }
  }
}

- (void)_queue_saveRelationship:(id)relationship contact:(id)contact extraRecordsToSave:(id)save extraRecordIDsToDelete:(id)delete activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  v36[1] = *MEMORY[0x277D85DE8];
  relationshipCopy = relationship;
  saveCopy = save;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  groupCopy = group;
  activityCopy = activity;
  deleteCopy = delete;
  dispatch_assert_queue_V2(serialQueue);
  v21 = ASRelationshipNeedsSupportedFeaturesUpdate();
  v22 = MEMORY[0x277CE9008];
  if (v21)
  {
    ASLoggingInitialize();
    v23 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "RelationshipManager saving relationship that requires a supported feature update, updating now", buf, 2u);
    }

    ASUpdateSupportedFeaturesForRelationship();
  }

  ASLoggingInitialize();
  v24 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "RelationshipManager serializing relationship records and saving to CloudKit", buf, 2u);
  }

  v25 = +[ASCloudKitManager relationshipZone];
  v26 = [relationshipCopy recordWithZoneID:v25 recordEncryptionType:0];

  if (saveCopy)
  {
    v36[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v28 = [v27 arrayByAddingObjectsFromArray:saveCopy];
  }

  else
  {
    v35 = v26;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __133__ASRelationshipManager__queue_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_activity_cloudKitGroup_completion___block_invoke;
  v32[3] = &unk_278C4D340;
  v32[4] = self;
  v33 = completionCopy;
  v30 = completionCopy;
  [WeakRetained saveRecordsIntoPrivateDatabase:v28 recordIDsToDelete:deleteCopy priority:2 activity:activityCopy group:groupCopy completion:v32];

  v31 = *MEMORY[0x277D85DE8];
}

void __133__ASRelationshipManager__queue_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 96);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __133__ASRelationshipManager__queue_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_activity_cloudKitGroup_completion___block_invoke_2;
  v13[3] = &unk_278C4E560;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

uint64_t __133__ASRelationshipManager__queue_saveRelationship_contact_extraRecordsToSave_extraRecordIDsToDelete_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)_queue_addPersonWithCloudKitAddress:(id)address toShares:(id)shares cloudKitGroup:(id)group completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  groupCopy = group;
  sharesCopy = shares;
  dispatch_assert_queue_V2(serialQueue);
  ASLoggingInitialize();
  v15 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = addressCopy;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "RelationshipManager adding person with cloudKitAddress %@ to my shares", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke;
  v19[3] = &unk_278C4BA08;
  v19[4] = self;
  v20 = completionCopy;
  v17 = completionCopy;
  [WeakRetained addParticipantWithCloudKitAddress:addressCopy toShares:sharesCopy group:groupCopy completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke_2;
  block[3] = &unk_278C4E768;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1 && !*(a1 + 32))
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager succesfully added person to shares", v6, 2u);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke_2_cold_1(a1);
    }
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)_queue_acceptShares:(id)shares forRelationship:(id)relationship contact:(id)contact cloudKitGroup:(id)group completion:(id)completion
{
  v43[2] = *MEMORY[0x277D85DE8];
  relationshipCopy = relationship;
  contactCopy = contact;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  groupCopy = group;
  sharesCopy = shares;
  dispatch_assert_queue_V2(serialQueue);
  v18 = MEMORY[0x277CBEBC0];
  activityShareURL = [sharesCopy activityShareURL];
  v20 = [v18 URLWithString:activityShareURL];

  v21 = MEMORY[0x277CBEBC0];
  relationshipShareURL = [sharesCopy relationshipShareURL];

  v23 = [v21 URLWithString:relationshipShareURL];

  v43[0] = v20;
  v43[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  ASLoggingInitialize();
  v25 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v24;
    _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "RelationshipManager accepting shares: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke;
  v34[3] = &unk_278C4E7B8;
  v34[4] = self;
  v35 = v24;
  v39 = contactCopy;
  v40 = completionCopy;
  v36 = relationshipCopy;
  v37 = v20;
  v38 = v23;
  v27 = contactCopy;
  v28 = v23;
  v29 = v20;
  v30 = relationshipCopy;
  v31 = completionCopy;
  v32 = v24;
  [WeakRetained acceptSharesWithURLs:v32 cloudKitGroup:groupCopy completion:v34];

  v33 = *MEMORY[0x277D85DE8];
}

void __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 96);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke_2;
  v14[3] = &unk_278C4E790;
  v24 = a2;
  v15 = v7;
  v16 = *(a1 + 40);
  v23 = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 32);
  v21 = v10;
  v22 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, v14);
}

void __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 104) == 1 && !*(a1 + 32))
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "RelationshipManager success accepting shares", v17, 2u);
    }

    v5 = [*(a1 + 56) objectForKeyedSubscript:*(a1 + 64)];
    v6 = [*(a1 + 56) objectForKeyedSubscript:*(a1 + 72)];
    v7 = [v5 recordID];
    [*(a1 + 48) setRemoteActivityDataShareID:v7];

    v8 = [v6 recordID];
    [*(a1 + 48) setRemoteRelationshipShareID:v8];

    v9 = *(a1 + 80);
    if (!v9)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 88) + 32));
      v11 = [*(a1 + 48) UUID];
      v9 = [WeakRetained contactWithUUID:v11];
    }

    v12 = [*(a1 + 80) relationshipStorage];
    [v12 setLegacyRelationship:*(a1 + 48)];
    [v9 setRelationshipStorage:v12];
    v13 = objc_loadWeakRetained((*(a1 + 88) + 32));
    [v13 saveContact:v9];

    v14 = *(a1 + 104);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke_2_cold_1(a1);
    }

    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    (*(*(a1 + 96) + 16))();
  }
}

- (void)_queue_reconcileCloudKitRelationships:(id)relationships
{
  v22 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = relationshipsCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager reconciling new cloudKit relationships %@", &v20, 0xCu);
  }

  v7 = ASFilterInvalidCloudKitRelationships(relationshipsCopy, v6);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  contacts = [WeakRetained contacts];
  v11 = ASReconcileCloudKitRelationshipsForCloudType(v7, contacts, self->_currentFetchType, 0);
  v12 = [v11 mutableCopy];

  if (ASSecureCloudEnabled())
  {
    v13 = objc_loadWeakRetained(&self->_contactsManager);
    contacts2 = [v13 contacts];
    v15 = ASReconcileCloudKitRelationshipsForCloudType(v7, contacts2, self->_currentFetchType, 1);
    v16 = [v15 mutableCopy];

    v17 = [v12 hk_dictionaryByAddingEntriesFromDictionary:v16];

    v12 = v17;
  }

  v18 = objc_loadWeakRetained(&self->_contactsManager);
  ASReconcileRelationshipsAgainstAddressBook(v12, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_processRemoteRelationships:(id)relationships activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  activityCopy = activity;
  groupCopy = group;
  serialQueue = self->_serialQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(serialQueue);
  ASLoggingInitialize();
  v15 = MEMORY[0x277CE9008];
  v16 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = relationshipsCopy;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "RelationshipManager processing remote relationships %@", buf, 0xCu);
  }

  v17 = dispatch_group_create();
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke;
  v25[3] = &unk_278C4E858;
  v25[4] = self;
  v19 = relationshipsCopy;
  v26 = v19;
  v20 = activityCopy;
  v27 = v20;
  v21 = groupCopy;
  v28 = v21;
  v22 = v17;
  v29 = v22;
  [WeakRetained setContactsUsingTransaction:v25];

  ASLoggingInitialize();
  v23 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "RelationshipManager waiting for asynchronous remote processing", buf, 2u);
  }

  dispatch_group_notify(v22, self->_serialQueue, completionCopy);

  v24 = *MEMORY[0x277D85DE8];
}

id __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = [WeakRetained contacts];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v10 UUID];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v7);
  }

  v32 = v5;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2;
  v37[3] = &unk_278C4E830;
  v12 = *(a1 + 40);
  v37[4] = *(a1 + 32);
  v13 = v4;
  v38 = v13;
  v39 = *(a1 + 48);
  v40 = *(a1 + 56);
  v41 = *(a1 + 64);
  [v12 enumerateKeysAndObjectsUsingBlock:v37];
  ASLoggingInitialize();
  v14 = MEMORY[0x277CE9008];
  v15 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Finished processing remote relationships, with updated contacts:", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [v13 allValues];
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * j);
        ASLoggingInitialize();
        v22 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v21 displayName];
          v25 = [v21 relationshipStorage];
          *buf = 138412546;
          v47 = v24;
          v48 = 2112;
          v49 = v25;
          _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "%@ -> %@", buf, 0x16u);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v50 count:16];
    }

    while (v18);
  }

  v26 = MEMORY[0x277CBEB98];
  v27 = [v31 allValues];
  v28 = [v26 setWithArray:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (ASSecureCloudEnabled())
  {
    if ([v6 cloudType] == 1)
    {
      v7 = [v5 zoneID];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      v9 = ASContactForSecureCloudRelationshipZone(v7, WeakRetained);
    }

    else
    {
      v13 = *(a1 + 32);
      v7 = [v5 zoneID];
      v9 = [v13 _contactWithRemoteRelationshipRecordZoneID:v7];
    }

    if (v9)
    {
      v14 = *(a1 + 40);
      v15 = [v9 UUID];
      v11 = [v14 objectForKeyedSubscript:v15];
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = v9;
    }

    v12 = v16;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v5 zoneID];
    v12 = [v10 _contactWithRemoteRelationshipRecordZoneID:v11];
  }

  if (v12)
  {
    v17 = [v12 relationshipStorage];
    v62 = [v17 relationshipForCloudType:{objc_msgSend(v6, "cloudType")}];

    v18 = [v12 relationshipStorage];
    v19 = [v18 remoteRelationshipForCloudType:{objc_msgSend(v6, "cloudType")}];

    v20 = [v12 relationshipStorage];
    v61 = [v20 primaryRemoteRelationship];

    v21 = [v12 relationshipStorage];
    [v21 updateRemoteRelationship:v6 cloudType:{objc_msgSend(v6, "cloudType")}];
    if (ASSecureCloudEnabled())
    {
      v22 = [v21 storageWithSynchronizedRelationshipIdentifiers];

      v21 = v22;
    }

    [v12 setRelationshipStorage:v21];
    v23 = *(a1 + 40);
    v24 = [v12 UUID];
    [v23 setObject:v12 forKeyedSubscript:v24];

    ASLoggingInitialize();
    v25 = MEMORY[0x277CE9008];
    v26 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [v12 UUID];
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "RelationshipManager evaluating new remote relationship for contact: %{public}@ - %@", buf, 0x16u);
    }

    ASLoggingInitialize();
    v29 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "RelationshipManager new remote relationship: %@", buf, 0xCu);
    }

    ASLoggingInitialize();
    v30 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "RelationshipManager previous remote relationship: %@", buf, 0xCu);
    }

    v31 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v32 = [v31 hasCompletedFirstFetch];

    if ((v32 & 1) == 0)
    {
      ASLoggingInitialize();
      v37 = *v25;
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v37, OS_LOG_TYPE_DEFAULT, "RelationshipManager does not need to process remote relationship events, this is the first CK fetch", buf, 2u);
      }

      goto LABEL_57;
    }

    v33 = [v12 relationshipStorage];
    v60 = [v33 primaryRelationship];

    v34 = [v62 cloudType];
    if (v34 != [v60 cloudType])
    {
      v38 = [v19 cloudType];
      v39 = [v61 cloudType];
      v40 = [v19 secureCloudNeedsRepair];
      if ([v62 isFriendshipActive] && (v41 = v38 == v39, !objc_msgSend(v6, "cloudType")) && ((v41 | v40) & 1) != 0)
      {
        ASLoggingInitialize();
        v42 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v62;
          *&buf[22] = 2112;
          v71 = v60;
          LOWORD(v72) = 2112;
          *(&v72 + 2) = v61;
          _os_log_impl(&dword_23E5E3000, v42, OS_LOG_TYPE_DEFAULT, "RelationshipManager received non primary relationship to process (NEW: %@\nLOCAL: %@\nPRIMARY: %@\nPRIMARY REMOTE: %@)", buf, 0x2Au);
        }

        [*(a1 + 32) _queue_processEndRelationshipIfNeededForPreviousRemoteRelationship:v19 newRemoteRelationship:v6 contact:v12 xpcActivity:*(a1 + 48) cloudKitGroup:*(a1 + 56) processGroup:{*(a1 + 64), v60}];
      }

      else
      {
        ASLoggingInitialize();
        v43 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v62;
          *&buf[22] = 2112;
          v71 = v60;
          _os_log_impl(&dword_23E5E3000, v43, OS_LOG_TYPE_DEFAULT, "RelationshipManager not processing remote relationship, not primary (NEW: %@\nLOCAL: %@\nPRIMARY: %@)", buf, 0x20u);
        }
      }

      goto LABEL_56;
    }

    if ([v62 isFriendshipActive])
    {
      [*(a1 + 32) _queue_processEndRelationshipIfNeededForPreviousRemoteRelationship:v19 newRemoteRelationship:v6 contact:v12 xpcActivity:*(a1 + 48) cloudKitGroup:*(a1 + 56) processGroup:*(a1 + 64)];
      if (([v19 isFriendshipActive] & 1) == 0 && objc_msgSend(v6, "isFriendshipActive"))
      {
        ASLoggingInitialize();
        v44 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v44, OS_LOG_TYPE_DEFAULT, "RelationshipManager determined this relationship began remotely", buf, 2u);
        }

        v45 = *(a1 + 32);
        v46 = [v12 UUID];
        [v45 _queue_removePlaceholderRelationshipBeganForContactWithUUID:v46 success:1];

        if ((ASSecureCloudEnabled() & 1) == 0)
        {
          goto LABEL_53;
        }

        v47 = objc_loadWeakRetained((*(a1 + 32) + 152));
        v48 = *(a1 + 32);
        v49 = [v12 UUID];
        [v47 relationshipManager:v48 relationshipBeganForFriend:v49 completion:&__block_literal_global_423];

        goto LABEL_47;
      }

      if (ASSecureCloudEnabled())
      {
LABEL_47:
        if ((([v62 hasOutgoingSecureCloudUpgradeRequest] & 1) != 0 || objc_msgSend(v62, "secureCloudUpgradeCompleted")) && objc_msgSend(v6, "secureCloudUpgradeFailed"))
        {
          ASLoggingInitialize();
          v50 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v50, OS_LOG_TYPE_DEFAULT, "RelationshipManager determined upgrade failed remotely, updating local relationship", buf, 2u);
          }

          [v62 insertEventWithType:302];
          dispatch_group_enter(*(a1 + 64));
          v51 = *(a1 + 32);
          v52 = *(a1 + 48);
          v53 = *(a1 + 56);
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_424;
          v68[3] = &unk_278C4E7E0;
          v69 = *(a1 + 64);
          [v51 _queue_saveRelationship:v62 contact:v12 activity:v52 cloudKitGroup:v53 completion:v68];
        }
      }
    }

LABEL_53:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__13;
    *&v72 = __Block_byref_object_dispose__13;
    *(&v72 + 1) = v19;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v54 = [*(*&buf[8] + 40) currentRelationshipEventAnchor];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_425;
    v63[3] = &unk_278C4E808;
    v63[4] = buf;
    v63[5] = &v64;
    [v6 traverseRelationshipHistoryStartingAtEventWithAnchor:v54 + 1 block:v63];
    if (*(v65 + 24) == 1)
    {
      v55 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v56 = [v12 UUID];
      [v55 deleteActivityDataForFriendWithUUID:v56];

      v57 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v58 = [v12 UUID];
      [v57 removeUnusedTemplatesForFriendWithUUID:v58];
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(buf, 8);

LABEL_56:
LABEL_57:

    goto LABEL_58;
  }

  ASLoggingInitialize();
  v35 = MEMORY[0x277CE9008];
  v36 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
  {
    __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_cold_1(v36, v5);
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
  {
    __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_cold_2();
  }

LABEL_58:

  v59 = *MEMORY[0x277D85DE8];
}

void __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_421(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager handled relationship began on secure cloud %{BOOL}d, %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_425(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v11 = 134217984;
    v12 = [v3 currentRelationshipEventAnchor];
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "RelationshipManager traversing new events at anchor %lu", &v11, 0xCu);
  }

  if (_IsRelationshipTransitioningToInactive(*(*(*(a1 + 32) + 8) + 40), v3))
  {
    ASLoggingInitialize();
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager detected a friendship that was ended remotely, local activity data should be deleted", &v11, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_processEndRelationshipIfNeededForPreviousRemoteRelationship:(id)relationship newRemoteRelationship:(id)remoteRelationship contact:(id)contact xpcActivity:(id)activity cloudKitGroup:(id)group processGroup:(id)processGroup
{
  v32 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  activityCopy = activity;
  groupCopy = group;
  processGroupCopy = processGroup;
  remoteRelationshipCopy = remoteRelationship;
  relationshipCopy = relationship;
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE9008];
  v21 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "RelationshipManager local friendship is active, comparing final remote state with previous remote relationship", buf, 2u);
  }

  IsRelationshipTransitioningToInactive = _IsRelationshipTransitioningToInactive(relationshipCopy, remoteRelationshipCopy);

  hasIncomingInviteRequest = [remoteRelationshipCopy hasIncomingInviteRequest];
  ASLoggingInitialize();
  v24 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v31 = hasIncomingInviteRequest;
    _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "RelationshipManager checking if another invite flow is in progress: %d", buf, 8u);
  }

  if (!(hasIncomingInviteRequest & 1 | ((IsRelationshipTransitioningToInactive & 1) == 0)))
  {
    ASLoggingInitialize();
    v25 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "RelationshipManager determined this relationship was ended remotely", buf, 2u);
    }

    dispatch_group_enter(processGroupCopy);
    uUID = [contactCopy UUID];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __161__ASRelationshipManager__queue_processEndRelationshipIfNeededForPreviousRemoteRelationship_newRemoteRelationship_contact_xpcActivity_cloudKitGroup_processGroup___block_invoke;
    v28[3] = &unk_278C4C218;
    v29 = processGroupCopy;
    [(ASRelationshipManager *)self _queue_removeFriendWithUUID:uUID eventType:104 activity:activityCopy cloudKitGroup:groupCopy completion:v28];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_contactStoreDidChangeNotification:(id)notification
{
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "RelationshipManager observed contact store change", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  v4 = os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "RelationshipManager reconcile for new contacts already scheduled", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "RelationshipManager scheduling new reconcile for contact store change", buf, 2u);
    }

    *(*(a1 + 32) + 136) = 1;
    v5 = dispatch_time(0, 3000000000);
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke_429;
    block[3] = &unk_278C4B278;
    block[4] = v6;
    dispatch_after(v5, v7, block);
  }
}

uint64_t __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke_429(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke_2;
  v4[3] = &unk_278C4E880;
  v4[4] = v1;
  return [v2 performTransaction:v4];
}

void __60__ASRelationshipManager__contactStoreDidChangeNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "RelationshipManager firing new reconcile for contact store change", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v6 = [WeakRetained contacts];

  v7 = ASAllRelationshipsByRecordIDForCloudType(v6, 0);
  if (ASSecureCloudEnabled())
  {
    v8 = ASAllRelationshipsByRecordIDForCloudType(v6, 1);
    v9 = [v7 hk_dictionaryByAddingEntriesFromDictionary:v8];

    v7 = v9;
  }

  v10 = objc_loadWeakRetained((*(a1 + 32) + 32));
  ASReconcileRelationshipsAgainstAddressBook(v7, v10);

  *(*(a1 + 32) + 136) = 0;
  v3[2](v3);
}

- (void)_processActivityDataPreview:(id)preview friendUUID:(id)d
{
  dCopy = d;
  previewCopy = preview;
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  ASProcessActivityDataPreviewWithManager(previewCopy, dCopy, WeakRetained);
}

- (id)_currentActivityDataPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  v3 = ASMakeActivityDataPreviewWithManager(WeakRetained);

  return v3;
}

- (void)friendInviteBulletinManagerDidReceiveActionResponse:(int64_t)response fromContactWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE9008];
  v8 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    responseCopy = response;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "RelationshipManager received notification action response: %ld in ASActivitySharingManager", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  v10 = [WeakRetained contactWithUUID:dCopy];

  if (v10)
  {
    if (response == 1)
    {
      v11 = objc_loadWeakRetained(&self->_gatewayManager);
      hasReachedMaximumNumberOfFriends = [v11 hasReachedMaximumNumberOfFriends];

      if (hasReachedMaximumNumberOfFriends)
      {
        v13 = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
        [v13 showMaxNumberOfFriendsError];
      }

      else
      {
        if ([v10 cloudType] == 1)
        {
          v14 = objc_loadWeakRetained(&self->_secureCloudDelegate);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __97__ASRelationshipManager_friendInviteBulletinManagerDidReceiveActionResponse_fromContactWithUUID___block_invoke;
          v19[3] = &unk_278C4C308;
          v19[4] = self;
          v20 = v10;
          [v14 relationshipManager:self acceptedInviteForFriend:dCopy completion:v19];

          v15 = v20;
        }

        else
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __97__ASRelationshipManager_friendInviteBulletinManagerDidReceiveActionResponse_fromContactWithUUID___block_invoke_2;
          v17[3] = &unk_278C4C308;
          v17[4] = self;
          v18 = v10;
          [(ASRelationshipManager *)self acceptInviteRequestFromFriendWithUUID:dCopy completion:v17];
          v15 = v18;
        }
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [ASRelationshipManager notificationManager:didReceiveActionResponse:fromContactWithUUID:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __97__ASRelationshipManager_friendInviteBulletinManagerDidReceiveActionResponse_fromContactWithUUID___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained showErrorAcceptingInviteFrom:*(a1 + 40)];
  }
}

void __97__ASRelationshipManager_friendInviteBulletinManagerDidReceiveActionResponse_fromContactWithUUID___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained showErrorAcceptingInviteFrom:*(a1 + 40)];
  }
}

- (id)_relationshipFromContact:(id)contact
{
  relationshipStorage = [contact relationshipStorage];
  legacyRelationship = [relationshipStorage legacyRelationship];

  return legacyRelationship;
}

- (id)_remoteRelationshipFromContact:(id)contact
{
  relationshipStorage = [contact relationshipStorage];
  legacyRemoteRelationship = [relationshipStorage legacyRemoteRelationship];

  return legacyRemoteRelationship;
}

- (ASRelationshipManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_2_341_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_6() cloudKitAddress];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __100__ASRelationshipManager_setActivityDataVisible_toFriendWithUUID_eventType_cloudKitGroup_completion___block_invoke_4_343_cold_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_6() cloudKitAddress];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__ASRelationshipManager_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __109__ASRelationshipManager_updateRelationshipWithCompetitionEvent_friendUUID_activity_cloudKitGroup_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __106__ASRelationshipManager_updateRelationshipsForCurrentFeatureSupportWithActivity_cloudKitGroup_completion___block_invoke_2_cold_1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 UUID];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_4(&dword_23E5E3000, v9, v10, "RelationshipManager error processing saved relationship, couldn't find contact with relationship UUID: %{public}@");
}

- (void)sendInviteToPersonWithDestination:callerID:serviceIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__ASRelationshipManager_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendWithdrawInviteRequestToFriendWithUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__ASRelationshipManager_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() relationshipEvents];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __122__ASRelationshipManager_messageCenter_didReceiveInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_3_cold_1(uint64_t *a1, void *a2, id *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 56));
  [WeakRetained inviteCompatibilityVersion];
  [*a3 inviterVersion];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xEu);

  v12 = *MEMORY[0x277D85DE8];
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_1(uint64_t *a1, void *a2, id *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 56));
  [WeakRetained inviteCompatibilityVersion];
  [*a3 inviteeVersion];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xEu);

  v12 = *MEMORY[0x277D85DE8];
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ASRelationshipManager_messageCenter_didReceiveInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_2_cold_3(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_6() handshakeToken];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __126__ASRelationshipManager_messageCenter_didReceiveFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __153__ASRelationshipManager_cloudKitManager_didReceiveNewRemoteRelationships_fromRecordZoneWithID_moreComing_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)notificationManager:didReceiveActionResponse:fromContactWithUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__ASRelationshipManager__processPersistedMessagesIfNeeded__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_398_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__ASRelationshipManager__queue_removeLegacyFriendWithUUID_eventType_activity_cloudKitGroup_completion___block_invoke_3_400_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__ASRelationshipManager__queue_fetchSharesForRelationship_cloudKitGroup_completion___block_invoke_411_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __104__ASRelationshipManager__queue_saveRelationshipAndFetchOrCreateShares_contact_cloudKitGroup_completion___block_invoke_2_416_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __108__ASRelationshipManager__queue_saveRelationship_contact_withExtraRecords_activity_cloudKitGroup_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__ASRelationshipManager__queue_addPersonWithCloudKitAddress_toShares_cloudKitGroup_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __94__ASRelationshipManager__queue_acceptShares_forRelationship_contact_cloudKitGroup_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 zoneID];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "RelationshipManager unable to find contact with remote relationship zone ID: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __93__ASRelationshipManager__queue_processRemoteRelationships_activity_cloudKitGroup_completion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end