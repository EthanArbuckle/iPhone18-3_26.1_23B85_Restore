@interface ASGatewayManager
- (ASGatewayManager)init;
- (BOOL)_shouldFilterBlacklistContactDestinations:(id)destinations;
- (BOOL)_shouldFilterWhitelistContactDestinations:(id)destinations;
- (BOOL)hasReachedMaximumNumberOfFriends;
- (BOOL)shouldFilterIncomingMessageFromContact:(id)contact;
- (unsigned)inviteCompatibilityVersion;
- (void)_queue_notifyObservers;
- (void)activitySharingManagerReady:(id)ready;
- (void)addObserver:(id)observer;
- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status;
- (void)gatewayStatusWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)updateState;
@end

@implementation ASGatewayManager

- (ASGatewayManager)init
{
  v10.receiver = self;
  v10.super_class = ASGatewayManager;
  v2 = [(ASGatewayManager *)&v10 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = HKCreateSerialDispatchQueue();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v5;

    v2->_currentlyPairedWatchMeetsMinimumVersion = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)activitySharingManagerReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  friendListManager = [readyCopy friendListManager];
  friendListManager = self->_friendListManager;
  self->_friendListManager = friendListManager;

  cloudKitManager = [readyCopy cloudKitManager];

  cloudKitManager = self->_cloudKitManager;
  self->_cloudKitManager = cloudKitManager;

  v9 = [objc_alloc(MEMORY[0x277D4B968]) initWithBundleIdentifier:@"com.apple.Fitness"];
  screenTimeConversation = self->_screenTimeConversation;
  self->_screenTimeConversation = v9;

  self->_currentlyPairedWatchMeetsMinimumVersion = FIDeviceMeetsMinimumOSVersionDaytona();
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    currentlyPairedWatchMeetsMinimumVersion = self->_currentlyPairedWatchMeetsMinimumVersion;
    v14[0] = 67109120;
    v14[1] = currentlyPairedWatchMeetsMinimumVersion;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Status for currentlyPairedWatchMeetsMinimumVersion: %{BOOL}d", v14, 8u);
  }

  [(ASCloudKitManager *)self->_cloudKitManager addObserver:self];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)gatewayStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ASGatewayManager_gatewayStatusWithCompletion___block_invoke;
  v7[3] = &unk_278C4B1B0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

void __48__ASGatewayManager_gatewayStatusWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v3 = [v4 isStandalonePhoneFitnessMode] ^ 1;

    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ASGatewayManager_gatewayStatusWithCompletion___block_invoke_2;
  v6[3] = &unk_278C4E8D0;
  v8 = v3;
  v7 = *(a1 + 40);
  [v5 fetchCloudKitAccountStatusWithCompletion:v6];
}

void __48__ASGatewayManager_gatewayStatusWithCompletion___block_invoke_2(uint64_t a1, int a2, char a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 67109376;
    v20 = a2;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Gateway status, iCloud signed in: %{BOOL}d, need to upgrade: %{BOOL}d", buf, 0xEu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASGatewayManager_gatewayStatusWithCompletion___block_invoke_303;
  block[3] = &unk_278C4E8A8;
  v10 = *(a1 + 32);
  v16 = a2;
  v17 = *(a1 + 40);
  v18 = a3;
  v14 = v7;
  v15 = v10;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasReachedMaximumNumberOfFriends
{
  friends = [(ASFriendListManager *)self->_friendListManager friends];
  v3 = ASNumberOfNewFriendsAllowedForFriends() < 1;

  return v3;
}

- (BOOL)shouldFilterIncomingMessageFromContact:(id)contact
{
  v14 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = contactCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Checking whitelist and blacklist for contact %@", &v12, 0xCu);
  }

  destinations = [contactCopy destinations];
  allObjects = [destinations allObjects];
  if ([(ASGatewayManager *)self _shouldFilterWhitelistContactDestinations:allObjects])
  {
    v8 = 1;
  }

  else
  {
    destinations2 = [contactCopy destinations];
    v8 = [(ASGatewayManager *)self _shouldFilterBlacklistContactDestinations:destinations2];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_shouldFilterWhitelistContactDestinations:(id)destinations
{
  v14 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = [(STConversation *)self->_screenTimeConversation allowableByContactsHandles:destinationsCopy];
  v6 = [v5 allowedByScreenTime] ^ 1;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = destinationsCopy;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Should filter non-whitelisted incoming message from %@: %{BOOL}d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_shouldFilterBlacklistContactDestinations:(id)destinations
{
  v28 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = destinationsCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Checking destinations: %@ against contacts blacklist for incoming message", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        _stripFZIDPrefix = [v11 _stripFZIDPrefix];
        CMFItemFromString = CreateCMFItemFromString();
        IsItemBlocked = CMFBlockListIsItemBlocked();
        if (CMFItemFromString)
        {
          CFRelease(CMFItemFromString);
        }

        if (IsItemBlocked)
        {
          ASLoggingInitialize();
          v16 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v24 = v11;
            v25 = 1024;
            v26 = 1;
            _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Should filter blacklisted incoming message from %@ = %{BOOL}d", buf, 0x12u);
          }

          v15 = 1;
          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)updateState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASGatewayManager_updateState__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __31__ASGatewayManager_updateState__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = FIDeviceMeetsMinimumOSVersionDaytona();
  v3 = *(a1 + 32);
  if (*(v3 + 48) != v2)
  {
    *(v3 + 48) = v2;
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 48);
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Updating state - status for canProcessInvitation: %{BOOL}d", buf, 8u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ASGatewayManager_updateState__block_invoke_306;
    block[3] = &unk_278C4B278;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __31__ASGatewayManager_updateState__block_invoke_306(uint64_t a1)
{
  [*(a1 + 32) _queue_notifyObservers];
  v1 = *MEMORY[0x277CE9210];

  return notify_post(v1);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ASGatewayManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ASGatewayManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)_queue_notifyObservers
{
  v16 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Gateway Manager status changed. Notifying observers", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) gatewayManagerStatusDidChange];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unsigned)inviteCompatibilityVersion
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE91F8]];
  if ([v3 BOOLForKey:@"MasqueradeActivitySharingInviteVersion"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status
{
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ASGatewayManager_cloudKitManager_didUpdateAccountStatus___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(observerQueue, block);
}

@end