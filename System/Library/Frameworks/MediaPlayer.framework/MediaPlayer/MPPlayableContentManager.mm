@interface MPPlayableContentManager
+ (BOOL)_deviceIsCarplayCapable;
+ (MPPlayableContentManager)sharedContentManager;
- (BOOL)_areContentLimitsEnforced;
- (BOOL)_contentItemWasSentToMediaRemote:(id)remote;
- (BOOL)_musicListsLimited;
- (BOOL)_onQueueContentItemWasSentToMediaRemote:(id)remote;
- (MPPlayableContentManager)init;
- (id)_init;
- (id)dataSource;
- (id)delegate;
- (void)_browsableContentEndpointChanged:(id)changed;
- (void)_contentItemChangedNotification:(id)notification;
- (void)_enqueueArtworkUpdate:(id)update size:(CGSize)size withCompletion:(id)completion;
- (void)_enqueueArtworkUpdate:(id)update withCompletion:(id)completion;
- (void)_handlePlaybackInitializationCompletedWithContext:(id)context error:(id)error;
- (void)_limitedUIChanged:(id)changed;
- (void)_markContentItemsAsSentToMediaRemote:(id)remote;
- (void)_pushContentItemsUpdate;
- (void)_scheduleUpdateSupportedAPIs;
- (void)_setupMediaRemoteEndpoint;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)_updateSupportedAPIs;
- (void)beginUpdates;
- (void)dealloc;
- (void)endUpdates;
- (void)reloadData;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setDataSource:(id)dataSource;
- (void)setDelegate:(id)delegate;
- (void)setNowPlayingIdentifiers:(NSArray *)nowPlayingIdentifiers;
@end

@implementation MPPlayableContentManager

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_scheduleUpdateSupportedAPIs
{
  if (!self->_scheduledSupportedAPIsChange)
  {
    self->_scheduledSupportedAPIsChange = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MPPlayableContentManager__scheduleUpdateSupportedAPIs__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __56__MPPlayableContentManager__scheduleUpdateSupportedAPIs__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateSupportedAPIs];
  *(*(a1 + 32) + 41) = 0;
  return result;
}

- (void)_updateSupportedAPIs
{
  v9 = *MEMORY[0x1E69E9840];
  delegate = [(MPPlayableContentManager *)self delegate];
  objc_opt_respondsToSelector();
  objc_opt_respondsToSelector();
  dataSource = [(MPPlayableContentManager *)self dataSource];
  objc_opt_respondsToSelector();
  objc_opt_respondsToSelector();
  objc_opt_respondsToSelector();
  v5 = MRMediaRemoteCopyBrowsableContentAPIMaskDescription();
  v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "Updating supported browsable content APIs: %{public}@", &v7, 0xCu);
  }

  MRMediaRemoteSetSupportedBrowsableContentAPIs();
}

void __48__MPPlayableContentManager__updateSupportedAPIs__block_invoke(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Error updating browsable content APIs. MediaRemote error %ld", &v4, 0xCu);
    }
  }
}

- (BOOL)_areContentLimitsEnforced
{
  currentSession = [(CARSessionStatus *)self->_currentSessionStatus currentSession];
  limitUserInterfaces = [currentSession limitUserInterfaces];
  if ([limitUserInterfaces BOOLValue])
  {
    _musicListsLimited = [(MPPlayableContentManager *)self _musicListsLimited];
  }

  else
  {
    _musicListsLimited = 0;
  }

  return _musicListsLimited;
}

- (BOOL)_musicListsLimited
{
  currentSession = [(CARSessionStatus *)self->_currentSessionStatus currentSession];
  configuration = [currentSession configuration];
  v4 = ([configuration limitableUserInterfaces] >> 3) & 1;

  return v4;
}

- (void)_browsableContentEndpointChanged:(id)changed
{
  currentSession = [(CARSessionStatus *)self->_currentSessionStatus currentSession];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = getCARSessionLimitUserInterfacesChangedNotification();
  [defaultCenter removeObserver:self name:v5 object:0];

  context = [(MPPlayableContentManager *)self context];
  if (currentSession)
  {
    [context setEndpointAvailable:1];

    context = getCARSessionLimitUserInterfacesChangedNotification();
    [defaultCenter addObserver:self selector:sel__limitedUIChanged_ name:context object:0];
  }

  else
  {
    [context setEndpointAvailable:0];
  }

  context2 = [(MPPlayableContentManager *)self context];
  [context2 setContentLimitsEnforced:{-[MPPlayableContentManager _areContentLimitsEnforced](self, "_areContentLimitsEnforced")}];

  context3 = [(MPPlayableContentManager *)self context];
  if ([(MPPlayableContentManager *)self _musicListsLimited])
  {
    v9 = 12;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [context3 setEnforcedContentItemsCount:v9];

  delegate = [(MPPlayableContentManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context4 = [(MPPlayableContentManager *)self context];
    [delegate playableContentManager:self didUpdateContext:context4];
  }
}

- (void)_limitedUIChanged:(id)changed
{
  v13 = *MEMORY[0x1E69E9840];
  context = [(MPPlayableContentManager *)self context];
  [context setContentLimitsEnforced:{-[MPPlayableContentManager _areContentLimitsEnforced](self, "_areContentLimitsEnforced")}];

  context2 = [(MPPlayableContentManager *)self context];
  if ([(MPPlayableContentManager *)self _musicListsLimited])
  {
    v6 = 12;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [context2 setEnforcedContentItemsCount:v6];

  v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPPlayableContentManager _musicListsLimited](self, "_musicListsLimited")}];
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Content manager updated limited UI: %@", &v11, 0xCu);
  }

  delegate = [(MPPlayableContentManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context3 = [(MPPlayableContentManager *)self context];
    [delegate playableContentManager:self didUpdateContext:context3];
  }
}

- (void)_markContentItemsAsSentToMediaRemote:(id)remote
{
  remoteCopy = remote;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPPlayableContentManager__markContentItemsAsSentToMediaRemote___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = remoteCopy;
  selfCopy = self;
  v6 = remoteCopy;
  dispatch_sync(serialQueue, v7);
}

void __65__MPPlayableContentManager__markContentItemsAsSentToMediaRemote___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E695DFB0] null];

        if (v7 != v8)
        {
          [*(*(a1 + 40) + 16) addObject:MRContentItemGetIdentifier()];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_onQueueContentItemWasSentToMediaRemote:(id)remote
{
  contentItemIdentifiersSentToMediaRemote = self->_contentItemIdentifiersSentToMediaRemote;
  identifier = [remote identifier];
  LOBYTE(contentItemIdentifiersSentToMediaRemote) = [(NSMutableSet *)contentItemIdentifiersSentToMediaRemote containsObject:identifier];

  return contentItemIdentifiersSentToMediaRemote;
}

- (BOOL)_contentItemWasSentToMediaRemote:(id)remote
{
  remoteCopy = remote;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPPlayableContentManager__contentItemWasSentToMediaRemote___block_invoke;
  block[3] = &unk_1E7681330;
  v9 = remoteCopy;
  v10 = &v11;
  block[4] = self;
  v6 = remoteCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

uint64_t __61__MPPlayableContentManager__contentItemWasSentToMediaRemote___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueueContentItemWasSentToMediaRemote:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_handlePlaybackInitializationCompletedWithContext:(id)context error:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  if ([contextCopy serviced])
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(sel_playableContentManager_initiatePlaybackOfContentItemAtIndexPath_completionHandler_);
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "The completion handler for the current %{public}@ procedure has already been called once. You should only call MediaPlayer's completion handler once after servicing the call.", &v16, 0xCu);
    }
  }

  indexPath = [contextCopy indexPath];
  v10 = [indexPath length];
  v11 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
  v11[1] = v10;
  if (v10)
  {
    v12 = 0;
    *v11 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    v13 = 1;
    do
    {
      *(*v11 + v12) = [indexPath indexAtPosition:v12];
      v12 = v13;
    }

    while (v10 > v13++);
  }

  else
  {
    *v11 = 0;
  }

  MRMediaRemoteFinishedPlaybackInitialization();
  v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = indexPath;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "Playback initialization completed at index path: %{public}@, error: %{public}@", &v16, 0x16u);
  }

  free(*v11);
  free(v11);
  [contextCopy setServiced:1];
}

- (void)_pushContentItemsUpdate
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MPPlayableContentManager__pushContentItemsUpdate__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __51__MPPlayableContentManager__pushContentItemsUpdate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Pushing content items update with items: %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 32) waitUntilAllOperationsAreFinished];
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(*(a1 + 32) + 8);
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

          v10 = *(*(&v11 + 1) + 8 * v9);
          [v4 addObject:{objc_msgSend(v10, "_mediaRemoteContentItem", v11)}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    MRMediaRemoteUpdateBrowsableContentItems();
    [*(*(a1 + 32) + 8) removeAllObjects];
  }
}

- (void)_tearDownNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_MPContentItemDidChangeNotification" object:0];
  v3 = getCARSessionLimitUserInterfacesChangedNotification();
  [defaultCenter removeObserver:self name:v3 object:0];

  [defaultCenter removeObserver:self name:*MEMORY[0x1E69B0C38] object:0];
}

- (void)_setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentItemChangedNotification_ name:@"_MPContentItemDidChangeNotification" object:0];
  v3 = getCARSessionLimitUserInterfacesChangedNotification();
  [defaultCenter addObserver:self selector:sel__limitedUIChanged_ name:v3 object:0];

  [defaultCenter addObserver:self selector:sel__browsableContentEndpointChanged_ name:*MEMORY[0x1E69B0C38] object:0];
}

- (void)_setupMediaRemoteEndpoint
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Content manager setting up media remote endpoint.", v4, 2u);
  }

  _setupMediaRemoteEndpoint___endpoint = self;
  MRMediaRemoteSetBrowsableContentEndpoint();
}

- (void)_enqueueArtworkUpdate:(id)update size:(CGSize)size withCompletion:(id)completion
{
  height = size.height;
  width = size.width;
  updateCopy = update;
  completionCopy = completion;
  artworkUpdateQueue = self->_artworkUpdateQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__MPPlayableContentManager__enqueueArtworkUpdate_size_withCompletion___block_invoke;
  v14[3] = &unk_1E7680158;
  v17 = width;
  v18 = height;
  v15 = updateCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = updateCopy;
  [(NSOperationQueue *)artworkUpdateQueue addOperationWithBlock:v14];
}

void __70__MPPlayableContentManager__enqueueArtworkUpdate_size_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = v2;
  if (v2 == -1.0)
  {
    [*(a1 + 32) bounds];
    v4 = v5;
  }

  v6 = v3;
  if (v3 == -1.0)
  {
    [*(a1 + 32) bounds];
    v6 = v7;
  }

  v8 = [*(a1 + 32) imageWithSize:{v4, v6}];
  v9 = v8;
  if (v8)
  {
    [(UIImage *)v8 size];
    if (v10 > 0.0)
    {
      [(UIImage *)v9 size];
      if (v11 > 0.0)
      {
        [(UIImage *)v9 size];
        v13 = v12;
        [(UIImage *)v9 size];
        if (v2 == -1.0 && v3 == -1.0)
        {
          [(UIImage *)v9 size];
          v2 = v15;
          [(UIImage *)v9 size];
          v3 = v16;
        }

        else
        {
          v17 = v13 / v14;
          if (v2 == -1.0)
          {
            v2 = v3 * v17;
          }

          else if (v3 == -1.0)
          {
            v3 = v2 / v17;
          }
        }
      }
    }

    [(UIImage *)v9 size];
    if (v18 > v2 || ([(UIImage *)v9 size], v19 > v3))
    {
      v24.width = v2;
      v24.height = v3;
      UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
      [(UIImage *)v9 drawInRect:0.0, 0.0, v2, v3];
      v20 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      v9 = v20;
    }

    v22 = UIImagePNGRepresentation(v9);
  }

  else
  {
    v22 = 0;
  }

  v21 = *(a1 + 40);
  [(UIImage *)v9 size];
  (*(v21 + 16))(v21, v22);
}

- (void)_enqueueArtworkUpdate:(id)update withCompletion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  artworkUpdateQueue = self->_artworkUpdateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MPPlayableContentManager__enqueueArtworkUpdate_withCompletion___block_invoke;
  v11[3] = &unk_1E76824C8;
  v12 = updateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = updateCopy;
  [(NSOperationQueue *)artworkUpdateQueue addOperationWithBlock:v11];
}

void __65__MPPlayableContentManager__enqueueArtworkUpdate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pngDataWithSize:{768.0, 768.0}];
  (*(*(a1 + 40) + 16))();
}

- (void)sessionDidDisconnect:(id)disconnect
{
  [(MPPlayableContentManager *)self _tearDownMediaRemoteEndpoint];

  [(MPPlayableContentManager *)self _tearDownNotifications];
}

- (void)sessionDidConnect:(id)connect
{
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (connect)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Content manager session connected.", buf, 2u);
    }

    if (!self->_context)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Content manager initializing context.", v12, 2u);
      }

      v8 = objc_alloc_init(MPPlayableContentManagerContext);
      context = self->_context;
      self->_context = v8;

      [(MPPlayableContentManagerContext *)self->_context setContentLimitsEnforced:[(MPPlayableContentManager *)self _areContentLimitsEnforced]];
      v10 = self->_context;
      if ([(MPPlayableContentManager *)self _musicListsLimited])
      {
        v11 = 12;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(MPPlayableContentManagerContext *)v10 setEnforcedContentItemsCount:v11];
      [(MPPlayableContentManagerContext *)self->_context setEnforcedContentTreeDepth:5];
      [(MPPlayableContentManagerContext *)self->_context setEndpointAvailable:1];
    }

    [(MPPlayableContentManager *)self _setupMediaRemoteEndpoint];
    [(MPPlayableContentManager *)self _setupNotifications];
    [(MPPlayableContentManager *)self _scheduleUpdateSupportedAPIs];
    [(MPPlayableContentManager *)self reloadData];
  }

  else
  {
    if (v6)
    {
      *v14 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Content manager has no available session.", v14, 2u);
    }
  }
}

- (void)_contentItemChangedNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPPlayableContentManager__contentItemChangedNotification___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

void __60__MPPlayableContentManager__contentItemChangedNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  if (([*(*(a1 + 40) + 8) containsObject:v2] & 1) == 0 && objc_msgSend(*(a1 + 40), "_onQueueContentItemWasSentToMediaRemote:", v2))
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[PlayableContentManager] Content item %@ mutated. Enqueueing for update.", &v5, 0xCu);
    }

    [*(*(a1 + 40) + 8) addObject:v2];
    v4 = *(a1 + 40);
    if ((v4[40] & 1) == 0)
    {
      [v4 _pushContentItemsUpdate];
    }
  }
}

- (void)setNowPlayingIdentifiers:(NSArray *)nowPlayingIdentifiers
{
  v5 = nowPlayingIdentifiers;
  if (!v5)
  {
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlayableContentManager.m" lineNumber:216 description:@"-[MPPlayableContentManager setNowPlayingIdentifiers:] nowPlayingIdentifiers cannot be nil."];

      v5 = 0;
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Warning: [MPPlayableContentManager setNowPlayingIdentifiers:] nowPlayingIdentifiers cannot be nil. The argument has been replaced with an empty array, please change usage to match this expectation. An assertion will be triggered for apps built on or after the iOS 12.2 SDK.", buf, 2u);
      }

      v5 = MEMORY[0x1E695E0F0];
    }
  }

  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MPPlayableContentManager_setNowPlayingIdentifiers___block_invoke;
  v10[3] = &unk_1E76823C0;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_sync(serialQueue, v10);
}

uint64_t __53__MPPlayableContentManager_setNowPlayingIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Content manager updated now playing identifiers. Pushing new identifiers.", v7, 2u);
  }

  return MRMediaRemoteUpdateNowPlayingIdentifiers();
}

- (void)endUpdates
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPPlayableContentManager_endUpdates__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __38__MPPlayableContentManager_endUpdates__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Content manager stopped coalescing content item updates. Pushing changes, if any.", v4, 2u);
  }

  *(*(a1 + 32) + 40) = 0;
  return [*(a1 + 32) _pushContentItemsUpdate];
}

- (void)beginUpdates
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPPlayableContentManager_beginUpdates__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __40__MPPlayableContentManager_beginUpdates__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Content manager beginning to coalesce content item updates.", v3, 2u);
  }

  *(*(a1 + 32) + 40) = 1;
}

- (void)reloadData
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPPlayableContentManager_reloadData__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __38__MPPlayableContentManager_reloadData__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 8) removeAllObjects];
  *(*(a1 + 32) + 40) = 0;
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Content manager invalidating browsable content...", v4, 2u);
  }

  return MRMediaRemoteInvalidateBrowsableContent();
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(MPPlayableContentManager *)self _scheduleUpdateSupportedAPIs];
}

- (void)setDataSource:(id)dataSource
{
  objc_storeWeak(&self->_dataSource, dataSource);
  [(MPPlayableContentManager *)self _scheduleUpdateSupportedAPIs];
  if (self->_context)
  {

    [(MPPlayableContentManager *)self reloadData];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Content manager skipping dataSource reload; awaiting context.", v5, 2u);
    }
  }
}

- (void)dealloc
{
  [(MPPlayableContentManager *)self _tearDownMediaRemoteEndpoint];
  [(MPPlayableContentManager *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = MPPlayableContentManager;
  [(MPPlayableContentManager *)&v3 dealloc];
}

- (MPPlayableContentManager)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-init is invalid. Use +sharedManager."];

  return 0;
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = MPPlayableContentManager;
  v2 = [(MPPlayableContentManager *)&v19 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Content manager initialized, awaiting session status.", buf, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutatedContentItems = v2->_mutatedContentItems;
    v2->_mutatedContentItems = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    contentItemIdentifiersSentToMediaRemote = v2->_contentItemIdentifiersSentToMediaRemote;
    v2->_contentItemIdentifiersSentToMediaRemote = v6;

    nowPlayingIdentifiers = v2->_nowPlayingIdentifiers;
    v2->_nowPlayingIdentifiers = MEMORY[0x1E695E0F0];

    v9 = dispatch_queue_create("com.apple.MediaRemote.MPPlayableContentManagerSerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    artworkUpdateQueue = v2->_artworkUpdateQueue;
    v2->_artworkUpdateQueue = v11;

    [(NSOperationQueue *)v2->_artworkUpdateQueue setMaxConcurrentOperationCount:5];
    v2->_scheduledSupportedAPIsChange = 0;
    _deviceIsCarplayCapable = [objc_opt_class() _deviceIsCarplayCapable];
    v14 = 0;
    if (_deviceIsCarplayCapable)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2050000000;
      v15 = getCARSessionStatusClass_softClass_49778;
      v28 = getCARSessionStatusClass_softClass_49778;
      if (!getCARSessionStatusClass_softClass_49778)
      {
        *buf = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __getCARSessionStatusClass_block_invoke_49779;
        v23 = &unk_1E7680410;
        v24 = &v25;
        __getCARSessionStatusClass_block_invoke_49779(buf);
        v15 = v26[3];
      }

      v16 = v15;
      _Block_object_dispose(&v25, 8);
      v14 = objc_alloc_init(v15);
    }

    currentSessionStatus = v2->_currentSessionStatus;
    v2->_currentSessionStatus = v14;

    [(CARSessionStatus *)v2->_currentSessionStatus setSessionObserver:v2];
  }

  return v2;
}

+ (BOOL)_deviceIsCarplayCapable
{
  if (_deviceIsCarplayCapable_onceToken != -1)
  {
    dispatch_once(&_deviceIsCarplayCapable_onceToken, &__block_literal_global_27_49788);
  }

  return _deviceIsCarplayCapable__MGDeviceIsCarplayCapable;
}

uint64_t __51__MPPlayableContentManager__deviceIsCarplayCapable__block_invoke()
{
  result = MGGetBoolAnswer();
  _deviceIsCarplayCapable__MGDeviceIsCarplayCapable = result;
  return result;
}

+ (MPPlayableContentManager)sharedContentManager
{
  if (sharedContentManager___once != -1)
  {
    dispatch_once(&sharedContentManager___once, &__block_literal_global_49793);
  }

  v3 = sharedContentManager___instance;

  return v3;
}

void __48__MPPlayableContentManager_sharedContentManager__block_invoke()
{
  v0 = [[MPPlayableContentManager alloc] _init];
  v1 = sharedContentManager___instance;
  sharedContentManager___instance = v0;
}

@end