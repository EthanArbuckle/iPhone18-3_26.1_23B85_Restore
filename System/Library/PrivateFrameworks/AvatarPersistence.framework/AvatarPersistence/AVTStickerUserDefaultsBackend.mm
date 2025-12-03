@interface AVTStickerUserDefaultsBackend
- (AVTStickerBackendDelegate)stickerBackendDelegate;
- (AVTStickerUserDefaultsBackend)initWithWorkQueue:(id)queue environment:(id)environment userDefaults:(id)defaults;
- (id)addNextFrequencyCountToFrequencySum:(id)sum;
- (id)fetchAllStickers;
- (id)fetchMostRecentStickersWithLimit:(unint64_t)limit;
- (id)fetchStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier;
- (id)nextFrequencyCount;
- (id)recentStickersForFetchRequest:(id)request error:(id *)error;
- (id)stickersIndexesMatchingAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier;
- (void)_recentStickersChangedExternally;
- (void)addStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier;
- (void)dealloc;
- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler;
- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)getStickersFromUserDefaults;
- (void)saveStickersToUserDefaults;
- (void)updateStickerAtIndex:(unint64_t)index;
@end

@implementation AVTStickerUserDefaultsBackend

- (AVTStickerUserDefaultsBackend)initWithWorkQueue:(id)queue environment:(id)environment userDefaults:(id)defaults
{
  queueCopy = queue;
  environmentCopy = environment;
  defaultsCopy = defaults;
  v20.receiver = self;
  v20.super_class = AVTStickerUserDefaultsBackend;
  v12 = [(AVTStickerUserDefaultsBackend *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    logger = [environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    objc_storeStrong(&v13->_userDefaults, defaults);
    stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
    cacheLocation = v13->_cacheLocation;
    v13->_cacheLocation = stickerImageStoreLocation;

    [(AVTStickerUserDefaultsBackend *)v13 getStickersFromUserDefaults];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, _RecentStickersChangedExternally, @"AVTRecentStickerChangedExternallyNotification", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v13;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AVTRecentStickerChangedExternallyNotification", 0);
  v4.receiver = self;
  v4.super_class = AVTStickerUserDefaultsBackend;
  [(AVTStickerUserDefaultsBackend *)&v4 dealloc];
}

- (id)recentStickersForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  workQueue = [(AVTStickerUserDefaultsBackend *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__AVTStickerUserDefaultsBackend_recentStickersForFetchRequest_error___block_invoke;
  block[3] = &unk_278CFAD20;
  block[4] = self;
  v14 = &v15;
  v8 = requestCopy;
  v13 = v8;
  dispatch_sync(workQueue, block);

  v9 = v16[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    *error = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __69__AVTStickerUserDefaultsBackend_recentStickersForFetchRequest_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stickers];
  v3 = [v2 count];

  if (v3)
  {
    if ([*(a1 + 40) criteria] == 1)
    {
      v4 = [*(a1 + 32) fetchAllStickers];
LABEL_7:
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v4;
      goto LABEL_8;
    }

    if ([*(a1 + 40) criteria] == 2)
    {
      v4 = [*(a1 + 32) fetchMostRecentStickersWithLimit:{objc_msgSend(*(a1 + 40), "resultLimit")}];
      goto LABEL_7;
    }

    result = [*(a1 + 40) criteria];
    if (result != 3)
    {
      return result;
    }

    v9 = *(a1 + 32);
    v15 = [*(a1 + 40) avatarIdentifier];
    v10 = [*(a1 + 40) stickerIdentifier];
    v11 = [v9 fetchStickersWithAvatarIdentifier:v15 stickerIdentifier:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

LABEL_8:

  return MEMORY[0x2821F96F8]();
}

- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  stickerIdentifierCopy = stickerIdentifier;
  handlerCopy = handler;
  workQueue = [(AVTStickerUserDefaultsBackend *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__AVTStickerUserDefaultsBackend_didUseStickerWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CFA5F8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = stickerIdentifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = stickerIdentifierCopy;
  v14 = identifierCopy;
  dispatch_sync(workQueue, v15);
}

void __103__AVTStickerUserDefaultsBackend_didUseStickerWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stickers];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __103__AVTStickerUserDefaultsBackend_didUseStickerWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke_2;
  v9 = &unk_278CFAD48;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v3 = [v2 indexOfObjectPassingTest:&v6];

  v4 = *(a1 + 32);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 addStickerWithAvatarIdentifier:*(a1 + 40) stickerIdentifier:{*(a1 + 48), v6, v7, v8, v9, v10}];
  }

  else
  {
    [v4 updateStickerAtIndex:{v3, v6, v7, v8, v9, v10}];
  }

  [*(a1 + 32) saveStickersToUserDefaults];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, 0);
  }
}

uint64_t __103__AVTStickerUserDefaultsBackend_didUseStickerWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 avatarRecordIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 stickerConfigurationIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  stickerIdentifierCopy = stickerIdentifier;
  handlerCopy = handler;
  workQueue = [(AVTStickerUserDefaultsBackend *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__AVTStickerUserDefaultsBackend_deleteRecentStickersWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278CFA5F8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = stickerIdentifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = stickerIdentifierCopy;
  v14 = identifierCopy;
  dispatch_sync(workQueue, v15);
}

void __110__AVTStickerUserDefaultsBackend_deleteRecentStickersWithAvatarIdentifier_stickerIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) stickersIndexesMatchingAvatarIdentifier:*(a1 + 40) stickerIdentifier:*(a1 + 48)];
  v2 = [*(a1 + 32) stickers];
  [v2 removeObjectsAtIndexes:v4];

  [*(a1 + 32) saveStickersToUserDefaults];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, 1, 0);
  }
}

- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler
{
  trackerCopy = tracker;
  handlerCopy = handler;
  logger = [(AVTStickerUserDefaultsBackend *)self logger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__AVTStickerUserDefaultsBackend_deleteRecentStickersForChangeTracker_completionHandler___block_invoke;
  v11[3] = &unk_278CFA7B0;
  v11[4] = self;
  v12 = trackerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = trackerCopy;
  [logger deletingStickerRecentsForRemoteChanges:v11];
}

void __88__AVTStickerUserDefaultsBackend_deleteRecentStickersForChangeTracker_completionHandler___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__AVTStickerUserDefaultsBackend_deleteRecentStickersForChangeTracker_completionHandler___block_invoke_2;
  v9[3] = &unk_278CFAD70;
  v9[4] = *(a1 + 32);
  v2 = MEMORY[0x245CF3540](v9);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) cacheLocation];
  v8 = 0;
  v5 = [v3 processChangeTransactionsWithChangeTokenLocation:v4 handler:v2 error:&v8];
  v6 = v8;

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

uint64_t __88__AVTStickerUserDefaultsBackend_deleteRecentStickersForChangeTracker_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 changeType] == 1)
        {
          v9 = *(a1 + 32);
          v10 = [v8 recordIdentifier];
          [v9 deleteRecentStickersWithAvatarIdentifier:v10 stickerIdentifier:0 completionHandler:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_recentStickersChangedExternally
{
  workQueue = [(AVTStickerUserDefaultsBackend *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__AVTStickerUserDefaultsBackend__recentStickersChangedExternally__block_invoke;
  block[3] = &unk_278CFA4E8;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __65__AVTStickerUserDefaultsBackend__recentStickersChangedExternally__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frequencyCounter];
  [*(a1 + 32) getStickersFromUserDefaults];
  if ([*(a1 + 32) frequencyCounter] != v2)
  {
    v3 = [*(a1 + 32) stickerBackendDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) stickerBackendDelegate];
      [v5 recentStickersDidChange:*(a1 + 32)];
    }
  }
}

- (void)getStickersFromUserDefaults
{
  userDefaults = [(AVTStickerUserDefaultsBackend *)self userDefaults];
  v4 = [userDefaults objectForKey:@"AVTRecentStickers" inDomain:@"com.apple.animoji"];

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v17 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v4 error:&v17];
  v12 = v17;
  v13 = [v11 objectForKeyedSubscript:@"AVTFrequencyCounter"];
  -[AVTStickerUserDefaultsBackend setFrequencyCounter:](self, "setFrequencyCounter:", [v13 unsignedIntegerValue]);
  v14 = [v11 objectForKeyedSubscript:@"AVTStickersArray"];
  if (v14)
  {
    [MEMORY[0x277CBEB18] arrayWithArray:v14];
  }

  else
  {
    [MEMORY[0x277CBEB18] array];
  }
  v15 = ;
  stickers = self->_stickers;
  self->_stickers = v15;
}

- (void)saveStickersToUserDefaults
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"AVTFrequencyCounter";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AVTStickerUserDefaultsBackend frequencyCounter](self, "frequencyCounter")}];
  v11[1] = @"AVTStickersArray";
  v12[0] = v3;
  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  v12[1] = stickers;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  userDefaults = [(AVTStickerUserDefaultsBackend *)self userDefaults];
  [userDefaults setObject:v6 forKey:@"AVTRecentStickers" inDomain:@"com.apple.animoji"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AVTRecentStickerChangedExternallyNotification", 0, 0, 1u);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetchAllStickers
{
  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  v4 = [stickers count];

  if (v4)
  {
    stickers2 = [(AVTStickerUserDefaultsBackend *)self stickers];
    v6 = [stickers2 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchMostRecentStickersWithLimit:(unint64_t)limit
{
  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  if ([stickers count] < limit)
  {
    stickers2 = [(AVTStickerUserDefaultsBackend *)self stickers];
    limit = [stickers2 count];
  }

  stickers3 = [(AVTStickerUserDefaultsBackend *)self stickers];
  v8 = [stickers3 subarrayWithRange:{0, limit}];
  v9 = [v8 copy];

  return v9;
}

- (id)fetchStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier
{
  v5 = [(AVTStickerUserDefaultsBackend *)self stickersIndexesMatchingAvatarIdentifier:identifier stickerIdentifier:stickerIdentifier];
  if ([v5 count])
  {
    stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
    v7 = [stickers objectsAtIndexes:v5];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextFrequencyCount
{
  [(AVTStickerUserDefaultsBackend *)self setFrequencyCounter:[(AVTStickerUserDefaultsBackend *)self frequencyCounter]+ 1];
  v3 = MEMORY[0x277CCABB0];
  frequencyCounter = [(AVTStickerUserDefaultsBackend *)self frequencyCounter];

  return [v3 numberWithUnsignedInteger:frequencyCounter];
}

- (id)addNextFrequencyCountToFrequencySum:(id)sum
{
  sumCopy = sum;
  [(AVTStickerUserDefaultsBackend *)self setFrequencyCounter:[(AVTStickerUserDefaultsBackend *)self frequencyCounter]+ 1];
  unsignedIntegerValue = [sumCopy unsignedIntegerValue];

  v6 = [(AVTStickerUserDefaultsBackend *)self frequencyCounter]+ unsignedIntegerValue;
  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithUnsignedInteger:v6];
}

- (void)addStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier
{
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  v8 = [AVTStickerRecord alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  nextFrequencyCount = [(AVTStickerUserDefaultsBackend *)self nextFrequencyCount];
  v12 = [(AVTStickerRecord *)v8 initWithIdentifier:uUIDString avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:stickerIdentifierCopy frequencySum:nextFrequencyCount serializationVersion:&unk_285391648];

  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__AVTStickerUserDefaultsBackend_addStickerWithAvatarIdentifier_stickerIdentifier___block_invoke;
  v18[3] = &unk_278CFAB50;
  v19 = v12;
  v14 = v12;
  v15 = [stickers indexOfObjectPassingTest:v18];

  stickers2 = [(AVTStickerUserDefaultsBackend *)self stickers];
  v17 = stickers2;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [stickers2 addObject:v14];
  }

  else
  {
    [stickers2 insertObject:v14 atIndex:v15];
  }
}

BOOL __82__AVTStickerUserDefaultsBackend_addStickerWithAvatarIdentifier_stickerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 frequencySum];
  v5 = [v3 frequencySum];

  v6 = [v4 compare:v5];
  return v6 < 2;
}

- (void)updateStickerAtIndex:(unint64_t)index
{
  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  v23 = [stickers objectAtIndex:index];

  frequencySum = [v23 frequencySum];
  v7 = [(AVTStickerUserDefaultsBackend *)self addNextFrequencyCountToFrequencySum:frequencySum];

  v8 = [AVTStickerRecord alloc];
  identifier = [v23 identifier];
  avatarRecordIdentifier = [v23 avatarRecordIdentifier];
  stickerConfigurationIdentifier = [v23 stickerConfigurationIdentifier];
  serializationVersion = [v23 serializationVersion];
  v13 = [(AVTStickerRecord *)v8 initWithIdentifier:identifier avatarRecordIdentifier:avatarRecordIdentifier stickerConfigurationIdentifier:stickerConfigurationIdentifier frequencySum:v7 serializationVersion:serializationVersion];

  stickers2 = [(AVTStickerUserDefaultsBackend *)self stickers];
  [stickers2 setObject:v13 atIndexedSubscript:index];

  v15 = index - 1;
  if (v15 >= 0)
  {
    while (1)
    {
      stickers3 = [(AVTStickerUserDefaultsBackend *)self stickers];
      v17 = [stickers3 objectAtIndex:v15];

      frequencySum2 = [(AVTStickerRecord *)v13 frequencySum];
      frequencySum3 = [v17 frequencySum];
      v20 = [frequencySum2 compare:frequencySum3];

      if (v20 != 1)
      {
        break;
      }

      stickers4 = [(AVTStickerUserDefaultsBackend *)self stickers];
      [stickers4 exchangeObjectAtIndex:v15 withObjectAtIndex:v15 + 1];

      if (v15-- <= 0)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (id)stickersIndexesMatchingAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier
{
  identifierCopy = identifier;
  stickerIdentifierCopy = stickerIdentifier;
  if ([identifierCopy length])
  {
    v8 = [stickerIdentifierCopy length] != 0;
  }

  else
  {
    v8 = 0;
  }

  stickers = [(AVTStickerUserDefaultsBackend *)self stickers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__AVTStickerUserDefaultsBackend_stickersIndexesMatchingAvatarIdentifier_stickerIdentifier___block_invoke;
  v14[3] = &unk_278CFAD98;
  v15 = identifierCopy;
  v16 = stickerIdentifierCopy;
  v17 = v8;
  v10 = stickerIdentifierCopy;
  v11 = identifierCopy;
  v12 = [stickers indexesOfObjectsPassingTest:v14];

  return v12;
}

uint64_t __91__AVTStickerUserDefaultsBackend_stickersIndexesMatchingAvatarIdentifier_stickerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 avatarRecordIdentifier];
  v6 = [v3 isEqualToString:v5];

  v7 = *(a1 + 40);
  v8 = [v4 stickerConfigurationIdentifier];

  v9 = [v7 isEqualToString:v8];
  v10 = v6 | v9;
  if (*(a1 + 48) == 1)
  {
    v10 = v6 & v9;
  }

  return v10 & 1;
}

- (AVTStickerBackendDelegate)stickerBackendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerBackendDelegate);

  return WeakRetained;
}

@end