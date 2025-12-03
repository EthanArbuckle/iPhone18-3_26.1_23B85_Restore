@interface ANAnnouncementCoordinator
+ (NSUUID)localDeviceIdentifier;
+ (id)sharedCoordinator;
- (ANAnnouncementCoordinator)init;
- (ANParticipant)localParticipant;
- (ANRemotePlaybackStatusProvider)remotePlaybackStatusProvider;
- (BOOL)_removeAnnouncementManagerForIdentifier:(id)identifier;
- (BOOL)_removePlaybackManagerForIdentifier:(id)identifier;
- (NSSet)scanningDeviceCandidates;
- (id)_createAnnouncementManagerForIdentifier:(id)identifier;
- (id)_createPlaybackManagerForIdentifier:(id)identifier;
- (id)_endpointIDForAnnouncementManager:(id)manager;
- (id)_endpointIDForPlaybackManager:(id)manager;
- (id)allAnnouncementsSortedByReceiptForEndpointID:(id)d;
- (id)announcementForID:(id)d endpointID:(id)iD;
- (id)announcementsForGroupID:(id)d endpointID:(id)iD;
- (id)announcementsForIDs:(id)ds endpointID:(id)d;
- (id)announcementsForPlaybackManager:(id)manager;
- (id)lastPlayedAnnouncementInfoForEndpointID:(id)d;
- (id)playbackManager:(id)manager announcementsForIdentifiers:(id)identifiers;
- (id)resolveIdentifier:(id)identifier;
- (unint64_t)playbackStateForEndpointID:(id)d;
- (void)_executeBlockForDelegates:(id)delegates;
- (void)_handleReceivedAnnouncement:(id)announcement;
- (void)_initializeManagers;
- (void)_notifyDidReceiveAnnouncement:(id)announcement forEndpointID:(id)d;
- (void)_removeManagersForIdentifier:(id)identifier;
- (void)addAnnouncement:(id)announcement forEndpointID:(id)d completion:(id)completion;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)announcementManager:(id)manager announcements:(id)announcements didChangeForGroupID:(id)d;
- (void)cleanForExit;
- (void)cleanUpOldAnnouncementsForPlaybackManager:(id)manager;
- (void)companionDidPlayAnnouncement:(id)announcement;
- (void)failedToDeliverAnnouncement:(id)announcement error:(id)error;
- (void)mockAnnouncement:(id)announcement playbackDeadline:(id)deadline sentHandler:(id)handler;
- (void)pauseAllTimersForEndpointID:(id)d;
- (void)performPlaybackCommand:(id)command endpointID:(id)d completionHandler:(id)handler;
- (void)playbackManager:(id)manager didFinishPlayingAnnouncement:(id)announcement withOptions:(unint64_t)options;
- (void)playbackManager:(id)manager didStartPlayingAnnouncement:(id)announcement;
- (void)playbackManager:(id)manager didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time;
- (void)playbackManager:(id)manager didUpdatePlaybackInfo:(id)info;
- (void)playbackManager:(id)manager didUpdatePlaybackState:(unint64_t)state announcement:(id)announcement;
- (void)playbackManagerDidFinishPlayingAnnouncements:(id)announcements;
- (void)receivedAnnouncement:(id)announcement;
- (void)removeOldAnnouncementsForEndpointID:(id)d;
- (void)resetAllTimersForEndpointID:(id)d;
- (void)resumeAllTimersForEndpointID:(id)d;
- (void)sendRequest:(id)request sentHandler:(id)handler;
- (void)setPlaybackStartedForAnnouncement:(id)announcement endpointID:(id)d;
- (void)setPlaybackStoppedForAnnouncement:(id)announcement endpointID:(id)d;
- (void)updateAnnouncement:(id)announcement statusFlags:(unint64_t)flags endpointID:(id)d;
@end

@implementation ANAnnouncementCoordinator

- (ANAnnouncementCoordinator)init
{
  v22.receiver = self;
  v22.super_class = ANAnnouncementCoordinator;
  v2 = [(ANAnnouncementCoordinator *)&v22 init];
  if (v2)
  {
    v3 = ANLogWithCategory();
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_opt_new();
    companionConnection = v2->_companionConnection;
    v2->_companionConnection = v5;

    [(ANCompanionConnection *)v2->_companionConnection setDelegate:v2];
    v7 = objc_opt_new();
    playbackStatePublisher = v2->_playbackStatePublisher;
    v2->_playbackStatePublisher = v7;

    v9 = objc_opt_new();
    messenger = v2->_messenger;
    v2->_messenger = v9;

    [(ANMessenger *)v2->_messenger setDelegate:v2];
    v11 = objc_opt_new();
    announcementManagers = v2->_announcementManagers;
    v2->_announcementManagers = v11;

    v13 = objc_opt_new();
    playbackManagers = v2->_playbackManagers;
    v2->_playbackManagers = v13;

    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
    delegatesToQueues = v2->_delegatesToQueues;
    v2->_delegatesToQueues = v15;

    v17 = dispatch_queue_create("com.apple.announce.coordinatorQueue", 0);
    queue = v2->_queue;
    v2->_queue = v17;

    v19 = objc_opt_new();
    siriRRDonation = v2->_siriRRDonation;
    v2->_siriRRDonation = v19;

    [(ANAnnouncementCoordinator *)v2 _initializeManagers];
  }

  return v2;
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ANAnnouncementCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoordinator_onceToken != -1)
  {
    dispatch_once(&sharedCoordinator_onceToken, block);
  }

  v2 = sharedCoordinator_sharedCoordinator;

  return v2;
}

uint64_t __46__ANAnnouncementCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedCoordinator_sharedCoordinator = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (NSUUID)localDeviceIdentifier
{
  if (localDeviceIdentifier_onceToken != -1)
  {
    +[ANAnnouncementCoordinator localDeviceIdentifier];
  }

  v3 = localDeviceIdentifier_identifier;

  return v3;
}

uint64_t __50__ANAnnouncementCoordinator_localDeviceIdentifier__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCAD78]);
  localDeviceIdentifier_identifier = [v0 initWithUUIDString:*MEMORY[0x277CEAA28]];

  return MEMORY[0x2821F96F8]();
}

- (void)_initializeManagers
{
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ANAnnouncementCoordinator__initializeManagers__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__ANAnnouncementCoordinator__initializeManagers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  v18 = [v2 arrayWithObject:v3];

  v4 = +[ANAnnouncementStorageManager sharedManager];
  v5 = [v18 copy];
  [v4 deleteAnnouncementsExcludingAnnouncementsForEndpointIDs:v5];

  v6 = [*(a1 + 32) announcementManagers];
  v7 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = +[ANAnnouncementCoordinator localDeviceIdentifier];
    v11 = [v9 _createAnnouncementManagerForIdentifier:v10];
  }

  v12 = [*(a1 + 32) playbackManagers];
  v13 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = *(a1 + 32);
    v16 = +[ANAnnouncementCoordinator localDeviceIdentifier];
    v17 = [v15 _createPlaybackManagerForIdentifier:v16];
  }
}

- (id)_createAnnouncementManagerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [ANAnnouncementManager managerWithEndpointID:identifierCopy];
  [v6 setDelegate:self];
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  [announcementManagers setObject:v6 forKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)_removeAnnouncementManagerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v7 = [announcementManagers objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    [v7 setDelegate:0];
    [v7 removeAllAnnouncements];
    announcementManagers2 = [(ANAnnouncementCoordinator *)self announcementManagers];
    [announcementManagers2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  return v7 != 0;
}

- (id)_createPlaybackManagerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [ANPlaybackManager managerWithEndpointID:identifierCopy];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  playbackManagers = [(ANAnnouncementCoordinator *)self playbackManagers];
  [playbackManagers setObject:v6 forKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)_removePlaybackManagerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  playbackManagers = [(ANAnnouncementCoordinator *)self playbackManagers];
  v7 = [playbackManagers objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    [v7 setDelegate:0];
    [v7 setDataSource:0];
    playbackManagers2 = [(ANAnnouncementCoordinator *)self playbackManagers];
    [playbackManagers2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  return v7 != 0;
}

- (void)_removeManagersForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ANAnnouncementCoordinator *)self _removeAnnouncementManagerForIdentifier:identifierCopy])
  {
    v5 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Removed Announcement Manager", buf, 2u);
    }
  }

  if ([(ANAnnouncementCoordinator *)self _removePlaybackManagerForIdentifier:identifierCopy])
  {
    v6 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Removed Playback Manager", v7, 2u);
    }
  }
}

- (id)_endpointIDForAnnouncementManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [announcementManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(announcementManagers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        announcementManagers2 = [(ANAnnouncementCoordinator *)self announcementManagers];
        v12 = [announcementManagers2 objectForKeyedSubscript:v10];

        if (v12 == managerCopy)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [announcementManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_endpointIDForPlaybackManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [announcementManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(announcementManagers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        playbackManagers = [(ANAnnouncementCoordinator *)self playbackManagers];
        v12 = [playbackManagers objectForKeyedSubscript:v10];

        if (v12 == managerCopy)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [announcementManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_handleReceivedAnnouncement:(id)announcement
{
  v64 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[ANHomeManager shared];
  currentAccessory = [v5 currentAccessory];

  if (currentAccessory)
  {
    memset(&v57, 0, sizeof(v57));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v57, HostTimeClock);
    [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
    v8 = v7;
    playbackDeadline = [announcementCopy playbackDeadline];
    [playbackDeadline timeIntervalSinceNow];
    v11 = v10;
    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v13 = *MEMORY[0x277CEA840];
    v14 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA840]];
    [v14 doubleValue];
    if (v11 <= v15)
    {
      mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
      v20 = [mEMORY[0x277CEAB80]2 numberForDefault:v13];
      [v20 doubleValue];
      v18 = v21;
    }

    else
    {
      mEMORY[0x277CEAB80]2 = [announcementCopy playbackDeadline];
      [mEMORY[0x277CEAB80]2 timeIntervalSinceNow];
      v18 = v17;
    }

    CMTimeMakeWithSeconds(&rhs, v18, v57.timescale);
    lhs = v57;
    CMTimeAdd(&location, &lhs, &rhs);
    v57 = location;
    [announcementCopy setMachStartTime:{objc_msgSend(MEMORY[0x277CEABE0], "secondsToMachTime:", v8 + v18)}];
    location = v57;
    [announcementCopy setCmStartTime:&location];
    v22 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      value = v57.value;
      machStartTime = [announcementCopy machStartTime];
      LODWORD(location.value) = 134218240;
      *(&location.value + 4) = value;
      LOWORD(location.flags) = 2048;
      *(&location.flags + 2) = machStartTime;
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Did Set Announcement CM Start Time = %lld, Mach Start Time = %llu", &location, 0x16u);
    }

    [MEMORY[0x277CBEB18] arrayWithObject:currentAccessory];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    obj = v52 = 0u;
    v42 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v42)
    {
      v41 = *v52;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          an_supportsAnnounce = [v26 an_supportsAnnounce];
          an_isAnnounceEnabled = [v26 an_isAnnounceEnabled];
          location = [announcementCopy location];
          v30 = [location containsAccessory:v26];

          v31 = [announcementCopy isAnnouncerInSameRoomAsAccessory:v26];
          v32 = [(ANAnnouncementCoordinator *)self log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            name = [v26 name];
            LODWORD(location.value) = 138413314;
            *(&location.value + 4) = name;
            LOWORD(location.flags) = 1024;
            *(&location.flags + 2) = an_supportsAnnounce;
            WORD1(location.epoch) = 1024;
            HIDWORD(location.epoch) = an_isAnnounceEnabled;
            v59 = 1024;
            v60 = v30;
            v61 = 1024;
            v62 = v31;
            _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "HomePod: %@ Supports Announce = %d, Announce Enabled = %d, In Announcement Location = %d, In Same Room as Announcer = %d", &location, 0x24u);
          }

          if (v31 & 1 | ((an_supportsAnnounce & an_isAnnounceEnabled & v30 & 1) == 0))
          {
            v34 = [(ANAnnouncementCoordinator *)self log];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(location.value) = 138412290;
              *(&location.value + 4) = v26;
              _os_log_impl(&dword_23F525000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring message. Accessory does not meet criteria for receiving the announcement locally. %@", &location, 0xCu);
            }
          }

          else
          {
            v35 = +[ANAnnouncementCoordinator localDeviceIdentifier];
            v36 = [announcementCopy copy];
            objc_initWeak(&location, self);
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke;
            v47[3] = &unk_278C86DC8;
            objc_copyWeak(&v50, &location);
            v37 = v36;
            v48 = v37;
            v34 = v35;
            v49 = v34;
            [(ANAnnouncementCoordinator *)self addAnnouncement:v37 forEndpointID:v34 completion:v47];

            objc_destroyWeak(&v50);
            objc_destroyWeak(&location);
          }
        }

        v42 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v42);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v19 = +[ANAnnouncementCoordinator localDeviceIdentifier];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke_19;
    v44[3] = &unk_278C86DF0;
    objc_copyWeak(&v46, &location);
    v45 = announcementCopy;
    [(ANAnnouncementCoordinator *)self addAnnouncement:v45 forEndpointID:v19 completion:v44];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke_2;
    block[3] = &unk_278C86B70;
    objc_copyWeak(&v8, a1 + 6);
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);

    objc_destroyWeak(&v8);
  }
}

void __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _notifyDidReceiveAnnouncement:*(a1 + 32) forEndpointID:*(a1 + 40)];
}

void __57__ANAnnouncementCoordinator__handleReceivedAnnouncement___block_invoke_19(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained messenger];
    [v3 forwardAnnouncementToCompanion:*(a1 + 32)];
  }
}

- (void)_notifyDidReceiveAnnouncement:(id)announcement forEndpointID:(id)d
{
  announcementCopy = announcement;
  dCopy = d;
  queue = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ANAnnouncementCoordinator__notifyDidReceiveAnnouncement_forEndpointID___block_invoke;
  v11[3] = &unk_278C86E18;
  v11[4] = self;
  v12 = announcementCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = announcementCopy;
  [(ANAnnouncementCoordinator *)self _executeBlockForDelegates:v11];
}

void __73__ANAnnouncementCoordinator__notifyDidReceiveAnnouncement_forEndpointID___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [v4 groupID];
    [v6 coordinator:v3 didReceiveAnnouncement:v4 forGroupID:v5 forEndpointID:a1[6]];
  }
}

- (void)_executeBlockForDelegates:(id)delegates
{
  delegatesCopy = delegates;
  queue = [(ANAnnouncementCoordinator *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ANAnnouncementCoordinator__executeBlockForDelegates___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = delegatesCopy;
  v6 = delegatesCopy;
  dispatch_async(queue, v7);
}

void __55__ANAnnouncementCoordinator__executeBlockForDelegates___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegatesToQueues];
  v3 = [v2 keyEnumerator];
  v4 = [v3 allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [*(a1 + 32) delegatesToQueues];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__ANAnnouncementCoordinator__executeBlockForDelegates___block_invoke_2;
        block[3] = &unk_278C86C60;
        v12 = *(a1 + 40);
        block[4] = v9;
        v16 = v12;
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)announcementManager:(id)manager announcements:(id)announcements didChangeForGroupID:(id)d
{
  managerCopy = manager;
  announcementsCopy = announcements;
  dCopy = d;
  queue = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__ANAnnouncementCoordinator_announcementManager_announcements_didChangeForGroupID___block_invoke;
  v15[3] = &unk_278C86690;
  v15[4] = self;
  v16 = managerCopy;
  v17 = announcementsCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = announcementsCopy;
  v14 = managerCopy;
  dispatch_async(queue, v15);
}

void __83__ANAnnouncementCoordinator_announcementManager_announcements_didChangeForGroupID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointIDForAnnouncementManager:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __83__ANAnnouncementCoordinator_announcementManager_announcements_didChangeForGroupID___block_invoke_2;
    v4[3] = &unk_278C86E40;
    v4[4] = v3;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = v2;
    [v3 _executeBlockForDelegates:v4];
  }
}

void __83__ANAnnouncementCoordinator_announcementManager_announcements_didChangeForGroupID___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coordinator:a1[4] didUpdateAnnouncements:a1[5] forGroupID:a1[6] forEndpointID:a1[7]];
  }
}

- (void)receivedAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  queue = [(ANAnnouncementCoordinator *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ANAnnouncementCoordinator_receivedAnnouncement___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = announcementCopy;
  v6 = announcementCopy;
  dispatch_async(queue, v7);
}

- (void)failedToDeliverAnnouncement:(id)announcement error:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  errorCopy = error;
  v8 = [(ANAnnouncementCoordinator *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = errorCopy;
    v13 = 2112;
    v14 = announcementCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Failed to Deliver Announcement with Error %@, %@", &v11, 0x16u);
  }

  if ([announcementCopy isRelayRequest])
  {
    v9 = +[ANUserNotificationController sharedController];
    [v9 postSendFailureNotificationForAnnouncement:announcementCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)companionDidPlayAnnouncement:(id)announcement
{
  v17 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  v5 = [(ANAnnouncementCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = announcementCopy;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Announcement was played on remote device: %@", &v15, 0xCu);
  }

  playbackManagers = [(ANAnnouncementCoordinator *)self playbackManagers];
  v7 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  v8 = [playbackManagers objectForKeyedSubscript:v7];

  if (v8)
  {
    remotePlaybackStatusProvider = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
    if (remotePlaybackStatusProvider)
    {
      remotePlaybackStatusProvider2 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
      v11 = +[ANAnnouncementCoordinator localDeviceIdentifier];
      v12 = [remotePlaybackStatusProvider2 isExternalPlaybackActiveForEndpointID:v11];
    }

    else
    {
      v12 = 0;
    }

    playbackState = [v8 playbackState];
    if ((v12 & 1) == 0 && playbackState != 1)
    {
      [v8 updatePlaybackForAnnouncementID:announcementCopy options:4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)playbackManager:(id)manager didStartPlayingAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v6 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v6)
  {
    v7 = [(ANAnnouncementCoordinator *)self announcementForID:announcementCopy endpointID:v6];
    if (v7)
    {
      [(ANAnnouncementCoordinator *)self updateAnnouncement:v7 statusFlags:4 endpointID:v6];
    }

    siriRRDonation = [(ANAnnouncementCoordinator *)self siriRRDonation];
    [siriRRDonation makePlaybackDonationWithAnnouncementID:announcementCopy];

    v9 = [MEMORY[0x277CEAB90] getEffectiveNotificationNameFromNotificationName:*MEMORY[0x277CEABF8] endpointID:v6];
    playbackStatePublisher = [(ANAnnouncementCoordinator *)self playbackStatePublisher];
    [playbackStatePublisher publishState:1 name:v9];
  }
}

- (void)playbackManager:(id)manager didFinishPlayingAnnouncement:(id)announcement withOptions:(unint64_t)options
{
  optionsCopy = options;
  managerCopy = manager;
  announcementCopy = announcement;
  v9 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:managerCopy];
  if (v9)
  {
    if ((optionsCopy & 4) != 0)
    {
      v10 = [(ANAnnouncementCoordinator *)self announcementForID:announcementCopy endpointID:v9];
      if (v10)
      {
        if ((optionsCopy & 2) != 0)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        [(ANAnnouncementCoordinator *)self updateAnnouncement:v10 statusFlags:v11 endpointID:v9];
        endpointID = [managerCopy endpointID];
        v13 = [ANAnalyticsContext contextWithEndpointID:endpointID];

        v14 = +[ANAnalytics shared];
        v15 = [MEMORY[0x277CBEAA8] now];
        creationTimestamp = [v10 creationTimestamp];
        [v15 timeIntervalSinceDate:creationTimestamp];
        [v14 announcementFinishedPlaying:v10 withTime:objc_msgSend(managerCopy ofGroupCount:"playbackItemCount") context:{v13, v17}];
      }

      if ((optionsCopy & 8) != 0 && [v9 an_isLocalDevice])
      {
        companionConnection = [(ANAnnouncementCoordinator *)self companionConnection];
        [companionConnection broadcastAnnouncementPlayed:announcementCopy];
      }
    }

    siriRRDonation = [(ANAnnouncementCoordinator *)self siriRRDonation];
    [siriRRDonation makePlaybackDonationWithAnnouncementID:announcementCopy];

    v20 = [MEMORY[0x277CEAB90] getEffectiveNotificationNameFromNotificationName:*MEMORY[0x277CEABF8] endpointID:v9];
    playbackStatePublisher = [(ANAnnouncementCoordinator *)self playbackStatePublisher];
    [playbackStatePublisher publishState:0 name:v20];
  }
}

- (void)playbackManager:(id)manager didUpdatePlaybackState:(unint64_t)state announcement:(id)announcement
{
  announcementCopy = announcement;
  v9 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v9)
  {
    if (announcementCopy)
    {
      siriRRDonation = [(ANAnnouncementCoordinator *)self siriRRDonation];
      [siriRRDonation makePlaybackDonationWithAnnouncementID:announcementCopy];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackState_announcement___block_invoke;
    v11[3] = &unk_278C86E68;
    v11[4] = self;
    stateCopy = state;
    v12 = v9;
    [(ANAnnouncementCoordinator *)self _executeBlockForDelegates:v11];
  }
}

void __81__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackState_announcement___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coordinator:a1[4] didUpdatePlaybackState:a1[6] forEndpointID:a1[5]];
  }
}

- (void)playbackManager:(id)manager didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time
{
  v6 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __92__ANAnnouncementCoordinator_playbackManager_didStartPlayingAnnouncementsAtMachAbsoluteTime___block_invoke;
    v8[3] = &unk_278C86E68;
    v8[4] = self;
    timeCopy = time;
    v9 = v6;
    [(ANAnnouncementCoordinator *)self _executeBlockForDelegates:v8];
  }
}

void __92__ANAnnouncementCoordinator_playbackManager_didStartPlayingAnnouncementsAtMachAbsoluteTime___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coordinator:a1[4] didStartPlayingAnnouncementsAtMachAbsoluteTime:a1[6] forEndpointID:a1[5]];
  }
}

- (void)playbackManagerDidFinishPlayingAnnouncements:(id)announcements
{
  v4 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:announcements];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__ANAnnouncementCoordinator_playbackManagerDidFinishPlayingAnnouncements___block_invoke;
    v6[3] = &unk_278C86E90;
    v6[4] = self;
    v7 = v4;
    [(ANAnnouncementCoordinator *)self _executeBlockForDelegates:v6];
  }
}

void __74__ANAnnouncementCoordinator_playbackManagerDidFinishPlayingAnnouncements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coordinator:*(a1 + 32) didFinishPlayingAnnouncementsForEndpointID:*(a1 + 40)];
  }
}

- (void)playbackManager:(id)manager didUpdatePlaybackInfo:(id)info
{
  infoCopy = info;
  v7 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackInfo___block_invoke;
    v8[3] = &unk_278C86E18;
    v8[4] = self;
    v9 = infoCopy;
    v10 = v7;
    [(ANAnnouncementCoordinator *)self _executeBlockForDelegates:v8];
  }
}

void __67__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackInfo___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coordinator:a1[4] didUpdatePlaybackInfo:a1[5] forEndpointID:a1[6]];
  }
}

- (void)cleanUpOldAnnouncementsForPlaybackManager:(id)manager
{
  v8 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v8)
  {
    remotePlaybackStatusProvider = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
    if (remotePlaybackStatusProvider)
    {
      v5 = remotePlaybackStatusProvider;
      remotePlaybackStatusProvider2 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
      v7 = [remotePlaybackStatusProvider2 isExternalPlaybackActiveForEndpointID:v8];

      if (v7)
      {
        [(ANAnnouncementCoordinator *)self removeOldAnnouncementsForEndpointID:v8];
      }
    }
  }
}

- (id)announcementsForPlaybackManager:(id)manager
{
  v4 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v4)
  {
    v5 = [(ANAnnouncementCoordinator *)self allAnnouncementsSortedByReceiptForEndpointID:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)playbackManager:(id)manager announcementsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:manager];
  if (v7)
  {
    v8 = [(ANAnnouncementCoordinator *)self announcementsForIDs:identifiersCopy endpointID:v7];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (ANRemotePlaybackStatusProvider)remotePlaybackStatusProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remotePlaybackStatusProvider);

  return WeakRetained;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ANAnnouncementCoordinator_ANAnnouncementCoordinatorDelegate__addDelegate_queue___block_invoke;
  block[3] = &unk_278C86668;
  v12 = queueCopy;
  selfCopy = self;
  v14 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __82__ANAnnouncementCoordinator_ANAnnouncementCoordinatorDelegate__addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(21, 0);
  }

  v5 = v3;
  v4 = [*(a1 + 40) delegatesToQueues];
  [v4 setObject:v5 forKey:*(a1 + 48)];
}

- (ANParticipant)localParticipant
{
  messenger = [(ANAnnouncementCoordinator *)self messenger];
  localParticipant = [messenger localParticipant];

  return localParticipant;
}

- (NSSet)scanningDeviceCandidates
{
  messenger = [(ANAnnouncementCoordinator *)self messenger];
  getScanningDeviceCandidates = [messenger getScanningDeviceCandidates];

  return getScanningDeviceCandidates;
}

- (void)sendRequest:(id)request sentHandler:(id)handler
{
  v6 = MEMORY[0x277CEABE0];
  handlerCopy = handler;
  requestCopy = request;
  if (([v6 isHomeAppInstalled] & 1) == 0)
  {
    v9 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ANAnnouncementCoordinator(AnnouncementSend) sendRequest:v9 sentHandler:?];
    }
  }

  messenger = [(ANAnnouncementCoordinator *)self messenger];
  [messenger sendRequest:requestCopy sentHandler:handlerCopy];
}

- (void)mockAnnouncement:(id)announcement playbackDeadline:(id)deadline sentHandler:(id)handler
{
  handlerCopy = handler;
  deadlineCopy = deadline;
  announcementCopy = announcement;
  messenger = [(ANAnnouncementCoordinator *)self messenger];
  [messenger mockAnnouncement:announcementCopy playbackDeadline:deadlineCopy sentHandler:handlerCopy];
}

- (void)addAnnouncement:(id)announcement forEndpointID:(id)d completion:(id)completion
{
  announcementCopy = announcement;
  dCopy = d;
  completionCopy = completion;
  queue = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__ANAnnouncementCoordinator_ANAnnouncementManagement_Internal__addAnnouncement_forEndpointID_completion___block_invoke;
  v15[3] = &unk_278C86EB8;
  v15[4] = self;
  v16 = dCopy;
  v17 = announcementCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = announcementCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __105__ANAnnouncementCoordinator_ANAnnouncementManagement_Internal__addAnnouncement_forEndpointID_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) announcementManagers];
  v3 = [v2 objectForKeyedSubscript:v4];

  if (!v3)
  {
    v3 = [*(a1 + 32) _createAnnouncementManagerForIdentifier:v4];
  }

  [v3 addAnnouncement:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (id)announcementsForGroupID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:iDCopy];

  v10 = [announcementManagers objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementsForGroupID:dCopy];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)announcementForID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:iDCopy];

  v10 = [announcementManagers objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementForID:dCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allAnnouncementsSortedByReceiptForEndpointID:(id)d
{
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v7 = [announcementManagers objectForKeyedSubscript:v6];

  if (v7)
  {
    allAnnouncementsSortedByReceipt = [v7 allAnnouncementsSortedByReceipt];
  }

  else
  {
    allAnnouncementsSortedByReceipt = MEMORY[0x277CBEBF8];
  }

  return allAnnouncementsSortedByReceipt;
}

- (id)announcementsForIDs:(id)ds endpointID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v10 = [announcementManagers objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementsForIDs:dsCopy];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)updateAnnouncement:(id)announcement statusFlags:(unint64_t)flags endpointID:(id)d
{
  dCopy = d;
  announcementCopy = announcement;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v11 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v12 = [announcementManagers objectForKeyedSubscript:v11];

  [v12 updateAnnouncement:announcementCopy statusFlags:flags];
}

- (void)removeOldAnnouncementsForEndpointID:(id)d
{
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v7 = [announcementManagers objectForKeyedSubscript:v6];

  [v7 removeOldAnnouncements];
}

- (void)cleanForExit
{
  messenger = [(ANAnnouncementCoordinator *)self messenger];
  [messenger cleanForExit];

  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  [announcementManagers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_208];
}

- (void)performPlaybackCommand:(id)command endpointID:(id)d completionHandler:(id)handler
{
  commandCopy = command;
  dCopy = d;
  handlerCopy = handler;
  queue = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__ANAnnouncementCoordinator_Playback__performPlaybackCommand_endpointID_completionHandler___block_invoke;
  v15[3] = &unk_278C86EB8;
  v15[4] = self;
  v16 = dCopy;
  v17 = commandCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = commandCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __91__ANAnnouncementCoordinator_Playback__performPlaybackCommand_endpointID_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Performing Playback Command. Endpoint ID = %@, Command = %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v6 = [*(a1 + 32) playbackManagers];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [*(a1 + 32) _createPlaybackManagerForIdentifier:v5];
  }

  [v7 performPlaybackCommand:*(a1 + 48) completionHandler:*(a1 + 56)];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)lastPlayedAnnouncementInfoForEndpointID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ANAnnouncementCoordinator_Playback__lastPlayedAnnouncementInfoForEndpointID___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __79__ANAnnouncementCoordinator_Playback__lastPlayedAnnouncementInfoForEndpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (v6)
  {
    v4 = [v6 lastPlayedAnnouncementInfo];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  v5 = v6;
  if (v6)
  {

    v5 = v6;
  }
}

- (unint64_t)playbackStateForEndpointID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ANAnnouncementCoordinator_Playback__playbackStateForEndpointID___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __66__ANAnnouncementCoordinator_Playback__playbackStateForEndpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (v6)
  {
    v4 = [v6 playbackState];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;

  return MEMORY[0x2821F96F8]();
}

- (void)setPlaybackStartedForAnnouncement:(id)announcement endpointID:(id)d
{
  announcementCopy = announcement;
  dCopy = d;
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANAnnouncementCoordinator_Playback__setPlaybackStartedForAnnouncement_endpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v12 = dCopy;
  v13 = announcementCopy;
  v9 = announcementCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __84__ANAnnouncementCoordinator_Playback__setPlaybackStartedForAnnouncement_endpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 updatePlaybackForAnnouncementID:*(a1 + 48) options:1];
}

- (void)setPlaybackStoppedForAnnouncement:(id)announcement endpointID:(id)d
{
  announcementCopy = announcement;
  dCopy = d;
  queue = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANAnnouncementCoordinator_Playback__setPlaybackStoppedForAnnouncement_endpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v12 = dCopy;
  v13 = announcementCopy;
  v9 = announcementCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __84__ANAnnouncementCoordinator_Playback__setPlaybackStoppedForAnnouncement_endpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 updatePlaybackForAnnouncementID:*(a1 + 48) options:12];
}

- (void)pauseAllTimersForEndpointID:(id)d
{
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v7 = [announcementManagers objectForKeyedSubscript:v6];

  [v7 pauseAllTimers];
}

- (void)resumeAllTimersForEndpointID:(id)d
{
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v7 = [announcementManagers objectForKeyedSubscript:v6];

  [v7 resumeAllTimers];
}

- (void)resetAllTimersForEndpointID:(id)d
{
  dCopy = d;
  announcementManagers = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:dCopy];

  v7 = [announcementManagers objectForKeyedSubscript:v6];

  [v7 resetAllTimers];
}

- (id)resolveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    v5 = identifierCopy;
  }

  else
  {
    v5 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  }

  v6 = v5;

  return v6;
}

@end