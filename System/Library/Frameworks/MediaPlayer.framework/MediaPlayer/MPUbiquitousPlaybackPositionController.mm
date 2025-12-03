@interface MPUbiquitousPlaybackPositionController
+ (MPUbiquitousPlaybackPositionController)sharedUbiquitousPlaybackPositionController;
- (BOOL)_onQueue_isEnabled;
- (BOOL)externallyActive;
- (MPUbiquitousPlaybackPositionController)init;
- (id)_playbackPositionEntityWithValuesFromMusicLibraryTrackPersistentID:(int64_t)d;
- (id)playbackPositionForLocalEntityIdentifier:(id)identifier;
- (id)playbackPositionForLocalEntityIdentifiers:(id)identifiers;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationDidEnterForegroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_defaultMediaLibraryDidChangeNotification:(id)notification;
- (void)_onServiceQueue_becomeActiveService;
- (void)_onServiceQueue_resignActiveService;
- (void)_onServiceQueue_updateActiveServiceIfNeeded;
- (void)beginUsingPlaybackPositionMetadata;
- (void)dealloc;
- (void)noteChangedPlaybackPositionMetadataForTrackPersistentID:(int64_t)d isCheckpoint:(BOOL)checkpoint;
- (void)persistPlaybackPositionMetadataEntity:(id)entity isCheckpoint:(BOOL)checkpoint completion:(id)completion;
- (void)setExternallyActive:(BOOL)active;
@end

@implementation MPUbiquitousPlaybackPositionController

+ (MPUbiquitousPlaybackPositionController)sharedUbiquitousPlaybackPositionController
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"disableUPP"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (sharedUbiquitousPlaybackPositionController_onceToken != -1)
    {
      dispatch_once(&sharedUbiquitousPlaybackPositionController_onceToken, &__block_literal_global_11876);
    }

    v4 = sharedUbiquitousPlaybackPositionController_bookmarksController;
  }

  return v4;
}

- (MPUbiquitousPlaybackPositionController)init
{
  v20.receiver = self;
  v20.super_class = MPUbiquitousPlaybackPositionController;
  v2 = [(MPUbiquitousPlaybackPositionController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_externallyActive = 1;
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithFormat:@"com.apple.%@.queue.%p", v6, v3];

    v8 = dispatch_queue_create([v7 UTF8String], 0);
    queue = v3->_queue;
    v3->_queue = v8;

    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 initWithFormat:@"com.apple.%@.serviceQueue.%p", v12, v3];

    v14 = dispatch_queue_create([v13 UTF8String], 0);
    serviceQueue = v3->_serviceQueue;
    v3->_serviceQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x1E69E4518]);
    uppServiceProxy = v3->_uppServiceProxy;
    v3->_uppServiceProxy = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v3 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
    [defaultCenter addObserver:v3 selector:sel__applicationDidEnterForegroundNotification_ name:*MEMORY[0x1E69DDAB0] object:0];
    [defaultCenter addObserver:v3 selector:sel__defaultMediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDefaultMediaLibraryDidChangeNotification" object:0];
  }

  return v3;
}

- (void)beginUsingPlaybackPositionMetadata
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MPUbiquitousPlaybackPositionController_beginUsingPlaybackPositionMetadata__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __84__MPUbiquitousPlaybackPositionController_sharedUbiquitousPlaybackPositionController__block_invoke()
{
  v0 = objc_alloc_init(MPUbiquitousPlaybackPositionController);
  v1 = sharedUbiquitousPlaybackPositionController_bookmarksController;
  sharedUbiquitousPlaybackPositionController_bookmarksController = v0;
}

- (void)_onServiceQueue_updateActiveServiceIfNeeded
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MPUbiquitousPlaybackPositionController__onServiceQueue_updateActiveServiceIfNeeded__block_invoke;
  block[3] = &unk_1E767D4B8;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v5;
  dispatch_sync(queue, block);
  if (*(v6 + 24) != *(v10 + 24))
  {
    if (*(v6 + 24))
    {
      [(MPUbiquitousPlaybackPositionController *)self _onServiceQueue_becomeActiveService];
    }

    else
    {
      [(MPUbiquitousPlaybackPositionController *)self _onServiceQueue_resignActiveService];
    }
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

- (BOOL)_onQueue_isEnabled
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  isHomeSharingLibrary = [v2 isHomeSharingLibrary];

  return isHomeSharingLibrary ^ 1;
}

uint64_t __85__MPUbiquitousPlaybackPositionController__onServiceQueue_updateActiveServiceIfNeeded__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
  result = [*(a1 + 32) _onQueue_shouldBeActive];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_onServiceQueue_becomeActiveService
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MPUbiquitousPlaybackPositionController__onServiceQueue_becomeActiveService__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __77__MPUbiquitousPlaybackPositionController__onServiceQueue_becomeActiveService__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_shouldBeActive];
  if (result)
  {
    v3 = *(a1 + 32);
    if ((*(v3 + 8) & 1) == 0 && *(v3 + 10) == 1)
    {
      *(v3 + 8) = 1;
    }
  }

  return result;
}

- (void)_onServiceQueue_resignActiveService
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MPUbiquitousPlaybackPositionController__onServiceQueue_resignActiveService__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_playbackPositionEntityWithValuesFromMusicLibraryTrackPersistentID:(int64_t)d
{
  uppServiceProxy = [(MPUbiquitousPlaybackPositionController *)self uppServiceProxy];
  if (uppServiceProxy)
  {
    v5 = +[MPMediaLibrary defaultMediaLibrary];
    v6 = [v5 itemWithPersistentID:d];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"storeBookmarkIdentifier", @"bookmarkTime", @"hasBeenPlayed", @"playCount", 0}];
    v8 = [v6 valuesForProperties:v7];

    v9 = [v8 objectForKey:@"storeBookmarkIdentifier"];
    v10 = objc_alloc(MEMORY[0x1E69E4520]);
    v11 = *MEMORY[0x1E69E41E0];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    v13 = [v10 initWithDomain:v11 playbackPositionKey:v9 persistentIdentifier:v12];

    v14 = [v8 objectForKey:@"bookmarkTime"];
    [v13 setBookmarkTime:v14];

    v15 = [v8 objectForKey:@"hasBeenPlayed"];
    [v13 setHasBeenPlayed:v15];

    v16 = [v8 objectForKey:@"playCount"];
    [v13 setUserPlayCount:v16];

    v17 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v18 = [v17 numberWithDouble:?];
    [v13 setBookmarkTimestamp:v18];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)persistPlaybackPositionMetadataEntity:(id)entity isCheckpoint:(BOOL)checkpoint completion:(id)completion
{
  entityCopy = entity;
  completionCopy = completion;
  serviceQueue = self->_serviceQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__MPUbiquitousPlaybackPositionController_persistPlaybackPositionMetadataEntity_isCheckpoint_completion___block_invoke;
  v13[3] = &unk_1E7677DE0;
  v14 = entityCopy;
  selfCopy = self;
  checkpointCopy = checkpoint;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = entityCopy;
  dispatch_async(serviceQueue, v13);
}

void __104__MPUbiquitousPlaybackPositionController_persistPlaybackPositionMetadataEntity_isCheckpoint_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69E4520]);
  v3 = *MEMORY[0x1E69E41E0];
  v4 = [*(a1 + 32) ubiquitousIdentifier];
  v5 = [v2 initWithDomain:v3 playbackPositionKey:v4 persistentIdentifier:0];

  if ([*(a1 + 32) bookmarkTimestampModified])
  {
    v6 = MEMORY[0x1E696AD98];
    [*(a1 + 32) bookmarkTimestamp];
    v7 = [v6 numberWithDouble:?];
    [v5 setBookmarkTimestamp:v7];
  }

  if ([*(a1 + 32) bookmarkTimeModified])
  {
    v8 = MEMORY[0x1E696AD98];
    [*(a1 + 32) bookmarkTime];
    v9 = [v8 numberWithDouble:?];
    [v5 setBookmarkTime:v9];
  }

  if ([*(a1 + 32) userPlayCountModified])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "userPlayCount")}];
    [v5 setUserPlayCount:v10];
  }

  if ([*(a1 + 32) hasBeenPlayedModified])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "hasBeenPlayed")}];
    [v5 setHasBeenPlayed:v11];
  }

  v12 = *(*(a1 + 40) + 32);
  v13 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__MPUbiquitousPlaybackPositionController_persistPlaybackPositionMetadataEntity_isCheckpoint_completion___block_invoke_2;
  v14[3] = &unk_1E767D3C8;
  v15 = *(a1 + 48);
  [v12 persistPlaybackPositionEntity:v5 isCheckpoint:v13 completionBlock:v14];
}

uint64_t __104__MPUbiquitousPlaybackPositionController_persistPlaybackPositionMetadataEntity_isCheckpoint_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)playbackPositionForLocalEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11838;
  v23 = __Block_byref_object_dispose__11839;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = dispatch_semaphore_create(0);
  serviceQueue = self->_serviceQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke;
  v14 = &unk_1E7681900;
  selfCopy = self;
  v7 = identifiersCopy;
  v16 = v7;
  v18 = &v19;
  v8 = v5;
  v17 = v8;
  dispatch_sync(serviceQueue, &v11);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = [v20[5] copy];

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke_2;
  v5[3] = &unk_1E7677DB8;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v2 getLocalPlaybackPositionForEntityIdentifiers:v1 completionBlock:v5];
}

intptr_t __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke_3;
  v6[3] = &unk_1E7677D90;
  v6[4] = *(a1 + 40);
  [a4 enumerateObjectsUsingBlock:v6];
  return dispatch_semaphore_signal(*(a1 + 32));
}

void __84__MPUbiquitousPlaybackPositionController_playbackPositionForLocalEntityIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [MPUbiquitousPlaybackPositionEntity alloc];
  v4 = [v15 playbackPositionKey];
  v5 = [(MPUbiquitousPlaybackPositionEntity *)v3 initWithUbiquitousIdentifier:v4];

  v6 = [v15 bookmarkTimestamp];

  if (v6)
  {
    v7 = [v15 bookmarkTimestamp];
    [v7 doubleValue];
    [(MPUbiquitousPlaybackPositionEntity *)v5 setBookmarkTimestamp:?];
  }

  v8 = [v15 bookmarkTime];

  if (v8)
  {
    v9 = [v15 bookmarkTime];
    [v9 doubleValue];
    [(MPUbiquitousPlaybackPositionEntity *)v5 setBookmarkTime:?];
  }

  v10 = [v15 userPlayCount];

  if (v10)
  {
    v11 = [v15 userPlayCount];
    -[MPUbiquitousPlaybackPositionEntity setUserPlayCount:](v5, "setUserPlayCount:", [v11 unsignedIntValue]);
  }

  v12 = [v15 hasBeenPlayed];

  if (v12)
  {
    v13 = [v15 hasBeenPlayed];
    -[MPUbiquitousPlaybackPositionEntity setHasBeenPlayed:](v5, "setHasBeenPlayed:", [v13 BOOLValue]);
  }

  v14 = [v15 libraryIdentifier];
  [(MPUbiquitousPlaybackPositionEntity *)v5 setLibraryIdentifier:v14];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
}

- (id)playbackPositionForLocalEntityIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];

  v7 = [(MPUbiquitousPlaybackPositionController *)self playbackPositionForLocalEntityIdentifiers:v6, identifierCopy, v11];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (BOOL)externallyActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MPUbiquitousPlaybackPositionController_externallyActive__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setExternallyActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MPUbiquitousPlaybackPositionController_setExternallyActive___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  activeCopy = active;
  dispatch_sync(queue, v4);
}

void __62__MPUbiquitousPlaybackPositionController_setExternallyActive___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 9) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 9) = v4;
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MPUbiquitousPlaybackPositionController_setExternallyActive___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (void)noteChangedPlaybackPositionMetadataForTrackPersistentID:(int64_t)d isCheckpoint:(BOOL)checkpoint
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__MPUbiquitousPlaybackPositionController_noteChangedPlaybackPositionMetadataForTrackPersistentID_isCheckpoint___block_invoke;
  block[3] = &unk_1E7682320;
  block[4] = self;
  block[5] = d;
  checkpointCopy = checkpoint;
  dispatch_sync(queue, block);
}

void __111__MPUbiquitousPlaybackPositionController_noteChangedPlaybackPositionMetadataForTrackPersistentID_isCheckpoint___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_isEnabled])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__MPUbiquitousPlaybackPositionController_noteChangedPlaybackPositionMetadataForTrackPersistentID_isCheckpoint___block_invoke_2;
    block[3] = &unk_1E7682320;
    v4 = *(a1 + 40);
    block[4] = v2;
    block[5] = v4;
    v6 = *(a1 + 48);
    dispatch_async(v3, block);
  }
}

void __111__MPUbiquitousPlaybackPositionController_noteChangedPlaybackPositionMetadataForTrackPersistentID_isCheckpoint___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _onServiceQueue_updateActiveServiceIfNeeded];
  v2 = [*(a1 + 32) _playbackPositionEntityWithValuesFromMusicLibraryTrackPersistentID:*(a1 + 40)];
  [*(*(a1 + 32) + 32) persistPlaybackPositionEntity:v2 isCheckpoint:*(a1 + 48) completionBlock:0];
}

- (void)_defaultMediaLibraryDidChangeNotification:(id)notification
{
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MPUbiquitousPlaybackPositionController__defaultMediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

void __84__MPUbiquitousPlaybackPositionController__defaultMediaLibraryDidChangeNotification___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__MPUbiquitousPlaybackPositionController__defaultMediaLibraryDidChangeNotification___block_invoke_2;
  v4[3] = &unk_1E76819F0;
  v4[4] = v2;
  v4[5] = &v5;
  dispatch_sync(v3, v4);
  [*(a1 + 32) _onServiceQueue_resignActiveService];
  if (*(v6 + 24) == 1)
  {
    [*(a1 + 32) _onServiceQueue_becomeActiveService];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __84__MPUbiquitousPlaybackPositionController__defaultMediaLibraryDidChangeNotification___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_shouldBeActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_applicationDidEnterForegroundNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MPUbiquitousPlaybackPositionController__applicationDidEnterForegroundNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __85__MPUbiquitousPlaybackPositionController__applicationDidEnterForegroundNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MPUbiquitousPlaybackPositionController__applicationDidEnterForegroundNotification___block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__MPUbiquitousPlaybackPositionController__applicationWillEnterForegroundNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __86__MPUbiquitousPlaybackPositionController__applicationWillEnterForegroundNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__MPUbiquitousPlaybackPositionController__applicationWillEnterForegroundNotification___block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = MPSharedBackgroundTaskProvider();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__MPUbiquitousPlaybackPositionController__applicationDidEnterBackgroundNotification___block_invoke;
  v11[3] = &unk_1E7680410;
  v11[4] = &v12;
  v6 = [v5 beginTaskWithName:@"MP_onServiceQueue_resignActiveService" expirationHandler:v11];

  v13[3] = v6;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v13[3];
    *buf = 134218498;
    v17 = v8;
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/StoreBookkeeper Support/_ios_tvos/MPUbiquitousPlaybackPositionController.m";
    v20 = 1024;
    v21 = 102;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "BackgroundTask: Took assertion (%lli) at %{public}s:%d", buf, 0x1Cu);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MPUbiquitousPlaybackPositionController__applicationDidEnterBackgroundNotification___block_invoke_26;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &v12;
  dispatch_async(serviceQueue, block);
  _Block_object_dispose(&v12, 8);
}

void __85__MPUbiquitousPlaybackPositionController__applicationDidEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MPSharedBackgroundTaskProvider();
  [v2 endTask:*(*(*(a1 + 32) + 8) + 24)];

  v3 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = 134218498;
    v6 = v4;
    v7 = 2082;
    v8 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/StoreBookkeeper Support/_ios_tvos/MPUbiquitousPlaybackPositionController.m";
    v9 = 1024;
    v10 = 99;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "BackgroundTask: End assertion (%lli) at %{public}s:%d", &v5, 0x1Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69B1358];
}

void __85__MPUbiquitousPlaybackPositionController__applicationDidEnterBackgroundNotification___block_invoke_26(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onServiceQueue_resignActiveService];
  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x1E69B1358])
  {
    v2 = MPSharedBackgroundTaskProvider();
    [v2 endTask:*(*(*(a1 + 40) + 8) + 24)];

    v3 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v5 = 134218498;
      v6 = v4;
      v7 = 2082;
      v8 = "/Library/Caches/com.apple.xbs/Sources/MediaPlayer/MediaPlayer/Core/StoreBookkeeper Support/_ios_tvos/MPUbiquitousPlaybackPositionController.m";
      v9 = 1024;
      v10 = 107;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "BackgroundTask: End assertion (%lli) at %{public}s:%d", &v5, 0x1Cu);
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPUbiquitousPlaybackPositionController;
  [(MPUbiquitousPlaybackPositionController *)&v4 dealloc];
}

@end