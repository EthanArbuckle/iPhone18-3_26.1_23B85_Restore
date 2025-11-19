@interface ANAnnouncementCoordinator
+ (NSUUID)localDeviceIdentifier;
+ (id)sharedCoordinator;
- (ANAnnouncementCoordinator)init;
- (ANParticipant)localParticipant;
- (ANRemotePlaybackStatusProvider)remotePlaybackStatusProvider;
- (BOOL)_removeAnnouncementManagerForIdentifier:(id)a3;
- (BOOL)_removePlaybackManagerForIdentifier:(id)a3;
- (NSSet)scanningDeviceCandidates;
- (id)_createAnnouncementManagerForIdentifier:(id)a3;
- (id)_createPlaybackManagerForIdentifier:(id)a3;
- (id)_endpointIDForAnnouncementManager:(id)a3;
- (id)_endpointIDForPlaybackManager:(id)a3;
- (id)allAnnouncementsSortedByReceiptForEndpointID:(id)a3;
- (id)announcementForID:(id)a3 endpointID:(id)a4;
- (id)announcementsForGroupID:(id)a3 endpointID:(id)a4;
- (id)announcementsForIDs:(id)a3 endpointID:(id)a4;
- (id)announcementsForPlaybackManager:(id)a3;
- (id)lastPlayedAnnouncementInfoForEndpointID:(id)a3;
- (id)playbackManager:(id)a3 announcementsForIdentifiers:(id)a4;
- (id)resolveIdentifier:(id)a3;
- (unint64_t)playbackStateForEndpointID:(id)a3;
- (void)_executeBlockForDelegates:(id)a3;
- (void)_handleReceivedAnnouncement:(id)a3;
- (void)_initializeManagers;
- (void)_notifyDidReceiveAnnouncement:(id)a3 forEndpointID:(id)a4;
- (void)_removeManagersForIdentifier:(id)a3;
- (void)addAnnouncement:(id)a3 forEndpointID:(id)a4 completion:(id)a5;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)announcementManager:(id)a3 announcements:(id)a4 didChangeForGroupID:(id)a5;
- (void)cleanForExit;
- (void)cleanUpOldAnnouncementsForPlaybackManager:(id)a3;
- (void)companionDidPlayAnnouncement:(id)a3;
- (void)failedToDeliverAnnouncement:(id)a3 error:(id)a4;
- (void)mockAnnouncement:(id)a3 playbackDeadline:(id)a4 sentHandler:(id)a5;
- (void)pauseAllTimersForEndpointID:(id)a3;
- (void)performPlaybackCommand:(id)a3 endpointID:(id)a4 completionHandler:(id)a5;
- (void)playbackManager:(id)a3 didFinishPlayingAnnouncement:(id)a4 withOptions:(unint64_t)a5;
- (void)playbackManager:(id)a3 didStartPlayingAnnouncement:(id)a4;
- (void)playbackManager:(id)a3 didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)a4;
- (void)playbackManager:(id)a3 didUpdatePlaybackInfo:(id)a4;
- (void)playbackManager:(id)a3 didUpdatePlaybackState:(unint64_t)a4 announcement:(id)a5;
- (void)playbackManagerDidFinishPlayingAnnouncements:(id)a3;
- (void)receivedAnnouncement:(id)a3;
- (void)removeOldAnnouncementsForEndpointID:(id)a3;
- (void)resetAllTimersForEndpointID:(id)a3;
- (void)resumeAllTimersForEndpointID:(id)a3;
- (void)sendRequest:(id)a3 sentHandler:(id)a4;
- (void)setPlaybackStartedForAnnouncement:(id)a3 endpointID:(id)a4;
- (void)setPlaybackStoppedForAnnouncement:(id)a3 endpointID:(id)a4;
- (void)updateAnnouncement:(id)a3 statusFlags:(unint64_t)a4 endpointID:(id)a5;
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
  block[4] = a1;
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
  v3 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ANAnnouncementCoordinator__initializeManagers__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(v3, block);
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

- (id)_createAnnouncementManagerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [ANAnnouncementManager managerWithEndpointID:v4];
  [v6 setDelegate:self];
  v7 = [(ANAnnouncementCoordinator *)self announcementManagers];
  [v7 setObject:v6 forKeyedSubscript:v4];

  return v6;
}

- (BOOL)_removeAnnouncementManagerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    [v7 setDelegate:0];
    [v7 removeAllAnnouncements];
    v8 = [(ANAnnouncementCoordinator *)self announcementManagers];
    [v8 setObject:0 forKeyedSubscript:v4];
  }

  return v7 != 0;
}

- (id)_createPlaybackManagerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [ANPlaybackManager managerWithEndpointID:v4];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  v7 = [(ANAnnouncementCoordinator *)self playbackManagers];
  [v7 setObject:v6 forKeyedSubscript:v4];

  return v6;
}

- (BOOL)_removePlaybackManagerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAnnouncementCoordinator *)self playbackManagers];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    [v7 setDelegate:0];
    [v7 setDataSource:0];
    v8 = [(ANAnnouncementCoordinator *)self playbackManagers];
    [v8 setObject:0 forKeyedSubscript:v4];
  }

  return v7 != 0;
}

- (void)_removeManagersForIdentifier:(id)a3
{
  v4 = a3;
  if ([(ANAnnouncementCoordinator *)self _removeAnnouncementManagerForIdentifier:v4])
  {
    v5 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Removed Announcement Manager", buf, 2u);
    }
  }

  if ([(ANAnnouncementCoordinator *)self _removePlaybackManagerForIdentifier:v4])
  {
    v6 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Removed Playback Manager", v7, 2u);
    }
  }
}

- (id)_endpointIDForAnnouncementManager:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(ANAnnouncementCoordinator *)self announcementManagers];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12 == v4)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_endpointIDForPlaybackManager:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(ANAnnouncementCoordinator *)self playbackManagers];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12 == v4)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_handleReceivedAnnouncement:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v4 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ANHomeManager shared];
  v39 = [v5 currentAccessory];

  if (v39)
  {
    memset(&v57, 0, sizeof(v57));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v57, HostTimeClock);
    [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
    v8 = v7;
    v9 = [v43 playbackDeadline];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    v12 = [MEMORY[0x277CEAB80] sharedInstance];
    v13 = *MEMORY[0x277CEA840];
    v14 = [v12 numberForDefault:*MEMORY[0x277CEA840]];
    [v14 doubleValue];
    if (v11 <= v15)
    {
      v16 = [MEMORY[0x277CEAB80] sharedInstance];
      v20 = [v16 numberForDefault:v13];
      [v20 doubleValue];
      v18 = v21;
    }

    else
    {
      v16 = [v43 playbackDeadline];
      [v16 timeIntervalSinceNow];
      v18 = v17;
    }

    CMTimeMakeWithSeconds(&rhs, v18, v57.timescale);
    lhs = v57;
    CMTimeAdd(&location, &lhs, &rhs);
    v57 = location;
    [v43 setMachStartTime:{objc_msgSend(MEMORY[0x277CEABE0], "secondsToMachTime:", v8 + v18)}];
    location = v57;
    [v43 setCmStartTime:&location];
    v22 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      value = v57.value;
      v24 = [v43 machStartTime];
      LODWORD(location.value) = 134218240;
      *(&location.value + 4) = value;
      LOWORD(location.flags) = 2048;
      *(&location.flags + 2) = v24;
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Did Set Announcement CM Start Time = %lld, Mach Start Time = %llu", &location, 0x16u);
    }

    [MEMORY[0x277CBEB18] arrayWithObject:v39];
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
          v27 = [v26 an_supportsAnnounce];
          v28 = [v26 an_isAnnounceEnabled];
          v29 = [v43 location];
          v30 = [v29 containsAccessory:v26];

          v31 = [v43 isAnnouncerInSameRoomAsAccessory:v26];
          v32 = [(ANAnnouncementCoordinator *)self log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v26 name];
            LODWORD(location.value) = 138413314;
            *(&location.value + 4) = v33;
            LOWORD(location.flags) = 1024;
            *(&location.flags + 2) = v27;
            WORD1(location.epoch) = 1024;
            HIDWORD(location.epoch) = v28;
            v59 = 1024;
            v60 = v30;
            v61 = 1024;
            v62 = v31;
            _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "HomePod: %@ Supports Announce = %d, Announce Enabled = %d, In Announcement Location = %d, In Same Room as Announcer = %d", &location, 0x24u);
          }

          if (v31 & 1 | ((v27 & v28 & v30 & 1) == 0))
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
            v36 = [v43 copy];
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
    v45 = v43;
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

- (void)_notifyDidReceiveAnnouncement:(id)a3 forEndpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self queue];
  dispatch_assert_queue_V2(v8);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ANAnnouncementCoordinator__notifyDidReceiveAnnouncement_forEndpointID___block_invoke;
  v11[3] = &unk_278C86E18;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)_executeBlockForDelegates:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ANAnnouncementCoordinator__executeBlockForDelegates___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)announcementManager:(id)a3 announcements:(id)a4 didChangeForGroupID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__ANAnnouncementCoordinator_announcementManager_announcements_didChangeForGroupID___block_invoke;
  v15[3] = &unk_278C86690;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)receivedAnnouncement:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ANAnnouncementCoordinator_receivedAnnouncement___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)failedToDeliverAnnouncement:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Failed to Deliver Announcement with Error %@, %@", &v11, 0x16u);
  }

  if ([v6 isRelayRequest])
  {
    v9 = +[ANUserNotificationController sharedController];
    [v9 postSendFailureNotificationForAnnouncement:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)companionDidPlayAnnouncement:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Announcement was played on remote device: %@", &v15, 0xCu);
  }

  v6 = [(ANAnnouncementCoordinator *)self playbackManagers];
  v7 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
    if (v9)
    {
      v10 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
      v11 = +[ANAnnouncementCoordinator localDeviceIdentifier];
      v12 = [v10 isExternalPlaybackActiveForEndpointID:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 playbackState];
    if ((v12 & 1) == 0 && v13 != 1)
    {
      [v8 updatePlaybackForAnnouncementID:v4 options:4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)playbackManager:(id)a3 didStartPlayingAnnouncement:(id)a4
{
  v11 = a4;
  v6 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  if (v6)
  {
    v7 = [(ANAnnouncementCoordinator *)self announcementForID:v11 endpointID:v6];
    if (v7)
    {
      [(ANAnnouncementCoordinator *)self updateAnnouncement:v7 statusFlags:4 endpointID:v6];
    }

    v8 = [(ANAnnouncementCoordinator *)self siriRRDonation];
    [v8 makePlaybackDonationWithAnnouncementID:v11];

    v9 = [MEMORY[0x277CEAB90] getEffectiveNotificationNameFromNotificationName:*MEMORY[0x277CEABF8] endpointID:v6];
    v10 = [(ANAnnouncementCoordinator *)self playbackStatePublisher];
    [v10 publishState:1 name:v9];
  }
}

- (void)playbackManager:(id)a3 didFinishPlayingAnnouncement:(id)a4 withOptions:(unint64_t)a5
{
  v5 = a5;
  v22 = a3;
  v8 = a4;
  v9 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:v22];
  if (v9)
  {
    if ((v5 & 4) != 0)
    {
      v10 = [(ANAnnouncementCoordinator *)self announcementForID:v8 endpointID:v9];
      if (v10)
      {
        if ((v5 & 2) != 0)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        [(ANAnnouncementCoordinator *)self updateAnnouncement:v10 statusFlags:v11 endpointID:v9];
        v12 = [v22 endpointID];
        v13 = [ANAnalyticsContext contextWithEndpointID:v12];

        v14 = +[ANAnalytics shared];
        v15 = [MEMORY[0x277CBEAA8] now];
        v16 = [v10 creationTimestamp];
        [v15 timeIntervalSinceDate:v16];
        [v14 announcementFinishedPlaying:v10 withTime:objc_msgSend(v22 ofGroupCount:"playbackItemCount") context:{v13, v17}];
      }

      if ((v5 & 8) != 0 && [v9 an_isLocalDevice])
      {
        v18 = [(ANAnnouncementCoordinator *)self companionConnection];
        [v18 broadcastAnnouncementPlayed:v8];
      }
    }

    v19 = [(ANAnnouncementCoordinator *)self siriRRDonation];
    [v19 makePlaybackDonationWithAnnouncementID:v8];

    v20 = [MEMORY[0x277CEAB90] getEffectiveNotificationNameFromNotificationName:*MEMORY[0x277CEABF8] endpointID:v9];
    v21 = [(ANAnnouncementCoordinator *)self playbackStatePublisher];
    [v21 publishState:0 name:v20];
  }
}

- (void)playbackManager:(id)a3 didUpdatePlaybackState:(unint64_t)a4 announcement:(id)a5
{
  v8 = a5;
  v9 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  if (v9)
  {
    if (v8)
    {
      v10 = [(ANAnnouncementCoordinator *)self siriRRDonation];
      [v10 makePlaybackDonationWithAnnouncementID:v8];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackState_announcement___block_invoke;
    v11[3] = &unk_278C86E68;
    v11[4] = self;
    v13 = a4;
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

- (void)playbackManager:(id)a3 didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)a4
{
  v6 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __92__ANAnnouncementCoordinator_playbackManager_didStartPlayingAnnouncementsAtMachAbsoluteTime___block_invoke;
    v8[3] = &unk_278C86E68;
    v8[4] = self;
    v10 = a4;
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

- (void)playbackManagerDidFinishPlayingAnnouncements:(id)a3
{
  v4 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
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

- (void)playbackManager:(id)a3 didUpdatePlaybackInfo:(id)a4
{
  v6 = a4;
  v7 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__ANAnnouncementCoordinator_playbackManager_didUpdatePlaybackInfo___block_invoke;
    v8[3] = &unk_278C86E18;
    v8[4] = self;
    v9 = v6;
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

- (void)cleanUpOldAnnouncementsForPlaybackManager:(id)a3
{
  v8 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  if (v8)
  {
    v4 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
    if (v4)
    {
      v5 = v4;
      v6 = [(ANAnnouncementCoordinator *)self remotePlaybackStatusProvider];
      v7 = [v6 isExternalPlaybackActiveForEndpointID:v8];

      if (v7)
      {
        [(ANAnnouncementCoordinator *)self removeOldAnnouncementsForEndpointID:v8];
      }
    }
  }
}

- (id)announcementsForPlaybackManager:(id)a3
{
  v4 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
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

- (id)playbackManager:(id)a3 announcementsForIdentifiers:(id)a4
{
  v6 = a4;
  v7 = [(ANAnnouncementCoordinator *)self _endpointIDForPlaybackManager:a3];
  if (v7)
  {
    v8 = [(ANAnnouncementCoordinator *)self announcementsForIDs:v6 endpointID:v7];
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

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ANAnnouncementCoordinator_ANAnnouncementCoordinatorDelegate__addDelegate_queue___block_invoke;
  block[3] = &unk_278C86668;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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
  v2 = [(ANAnnouncementCoordinator *)self messenger];
  v3 = [v2 localParticipant];

  return v3;
}

- (NSSet)scanningDeviceCandidates
{
  v2 = [(ANAnnouncementCoordinator *)self messenger];
  v3 = [v2 getScanningDeviceCandidates];

  return v3;
}

- (void)sendRequest:(id)a3 sentHandler:(id)a4
{
  v6 = MEMORY[0x277CEABE0];
  v7 = a4;
  v8 = a3;
  if (([v6 isHomeAppInstalled] & 1) == 0)
  {
    v9 = [(ANAnnouncementCoordinator *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ANAnnouncementCoordinator(AnnouncementSend) sendRequest:v9 sentHandler:?];
    }
  }

  v10 = [(ANAnnouncementCoordinator *)self messenger];
  [v10 sendRequest:v8 sentHandler:v7];
}

- (void)mockAnnouncement:(id)a3 playbackDeadline:(id)a4 sentHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ANAnnouncementCoordinator *)self messenger];
  [v11 mockAnnouncement:v10 playbackDeadline:v9 sentHandler:v8];
}

- (void)addAnnouncement:(id)a3 forEndpointID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__ANAnnouncementCoordinator_ANAnnouncementManagement_Internal__addAnnouncement_forEndpointID_completion___block_invoke;
  v15[3] = &unk_278C86EB8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
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

- (id)announcementsForGroupID:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v7];

  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementsForGroupID:v6];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)announcementForID:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v7];

  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementForID:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allAnnouncementsSortedByReceiptForEndpointID:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 allAnnouncementsSortedByReceipt];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)announcementsForIDs:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v9 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v7];

  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 announcementsForIDs:v6];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)updateAnnouncement:(id)a3 statusFlags:(unint64_t)a4 endpointID:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v11 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v8];

  v12 = [v10 objectForKeyedSubscript:v11];

  [v12 updateAnnouncement:v9 statusFlags:a4];
}

- (void)removeOldAnnouncementsForEndpointID:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 removeOldAnnouncements];
}

- (void)cleanForExit
{
  v3 = [(ANAnnouncementCoordinator *)self messenger];
  [v3 cleanForExit];

  v4 = [(ANAnnouncementCoordinator *)self announcementManagers];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_208];
}

- (void)performPlaybackCommand:(id)a3 endpointID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ANAnnouncementCoordinator *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__ANAnnouncementCoordinator_Playback__performPlaybackCommand_endpointID_completionHandler___block_invoke;
  v15[3] = &unk_278C86EB8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
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

- (id)lastPlayedAnnouncementInfoForEndpointID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ANAnnouncementCoordinator_Playback__lastPlayedAnnouncementInfoForEndpointID___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

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

- (unint64_t)playbackStateForEndpointID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ANAnnouncementCoordinator_Playback__playbackStateForEndpointID___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

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

- (void)setPlaybackStartedForAnnouncement:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANAnnouncementCoordinator_Playback__setPlaybackStartedForAnnouncement_endpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __84__ANAnnouncementCoordinator_Playback__setPlaybackStartedForAnnouncement_endpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 updatePlaybackForAnnouncementID:*(a1 + 48) options:1];
}

- (void)setPlaybackStoppedForAnnouncement:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANAnnouncementCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANAnnouncementCoordinator_Playback__setPlaybackStoppedForAnnouncement_endpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __84__ANAnnouncementCoordinator_Playback__setPlaybackStoppedForAnnouncement_endpointID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackManagers];
  v3 = [*(a1 + 32) resolveIdentifier:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 updatePlaybackForAnnouncementID:*(a1 + 48) options:12];
}

- (void)pauseAllTimersForEndpointID:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 pauseAllTimers];
}

- (void)resumeAllTimersForEndpointID:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 resumeAllTimers];
}

- (void)resetAllTimersForEndpointID:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementCoordinator *)self announcementManagers];
  v6 = [(ANAnnouncementCoordinator *)self resolveIdentifier:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 resetAllTimers];
}

- (id)resolveIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  }

  v6 = v5;

  return v6;
}

@end