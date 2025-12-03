@interface MusicKit_SoftLinking_MPMusicPlayerController
+ (MusicKit_SoftLinking_MPMusicPlayerController)applicationMusicPlayer;
+ (MusicKit_SoftLinking_MPMusicPlayerController)systemMusicPlayer;
+ (NSString)notificationUserInfoKeyContentItemIDs;
- (MusicKit_SoftLinking_MPMusicPlayerItem)nowPlayingItem;
- (id)_initWithUnderlyingPlayerController:(id)controller;
- (id)itemsForContentItemIDs:(id)ds;
- (int64_t)playbackState;
- (int64_t)repeatMode;
- (int64_t)shuffleMode;
- (void)_handleNowPlayingItemDidChangeNotification:(id)notification;
- (void)_handlePlaybackStateDidChangeNotification:(id)notification;
- (void)_handleQueueDidChangeNotification:(id)notification;
- (void)appendQueueDescriptor:(id)descriptor;
- (void)dealloc;
- (void)performQueueTransaction:(id)transaction;
- (void)prependQueueDescriptor:(id)descriptor;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration;
- (void)setQueueWithDescriptor:(id)descriptor;
- (void)setRepeatMode:(int64_t)mode;
- (void)setShuffleMode:(int64_t)mode;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerController

+ (MusicKit_SoftLinking_MPMusicPlayerController)systemMusicPlayer
{
  if (systemMusicPlayer_sSystemMusicPlayerOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPMusicPlayerController systemMusicPlayer];
  }

  v3 = systemMusicPlayer_sSystemMusicPlayer;

  return v3;
}

+ (MusicKit_SoftLinking_MPMusicPlayerController)applicationMusicPlayer
{
  if (applicationMusicPlayer_sApplicationMusicPlayerOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPMusicPlayerController applicationMusicPlayer];
  }

  v3 = applicationMusicPlayer_sApplicationMusicPlayer;

  return v3;
}

- (id)_initWithUnderlyingPlayerController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPMusicPlayerController;
  v6 = [(MusicKit_SoftLinking_MPMusicPlayerController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlayerController, controller);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleNowPlayingItemDidChangeNotification_ name:v9 object:v7->_underlyingPlayerController];

    v10 = getMPMusicPlayerControllerPlaybackStateDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handlePlaybackStateDidChangeNotification_ name:v10 object:v7->_underlyingPlayerController];

    v11 = get_MPMusicPlayerControllerQueueDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleQueueDidChangeNotification_ name:v11 object:v7->_underlyingPlayerController];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingPlayerController];

  v5 = getMPMusicPlayerControllerPlaybackStateDidChangeNotification();
  [defaultCenter removeObserver:self name:v5 object:self->_underlyingPlayerController];

  v6 = get_MPMusicPlayerControllerQueueDidChangeNotification();
  [defaultCenter removeObserver:self name:v6 object:self->_underlyingPlayerController];

  v7.receiver = self;
  v7.super_class = MusicKit_SoftLinking_MPMusicPlayerController;
  [(MusicKit_SoftLinking_MPMusicPlayerController *)&v7 dealloc];
}

- (MusicKit_SoftLinking_MPMusicPlayerItem)nowPlayingItem
{
  nowPlayingItem = [(MPMusicPlayerController *)self->_underlyingPlayerController nowPlayingItem];
  v3 = [MusicKit_SoftLinking_MPMusicPlayerItem playerItemForMediaItem:nowPlayingItem];

  return v3;
}

- (id)itemsForContentItemIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(MPMusicPlayerController *)self->_underlyingPlayerController _mediaItemsForContentItemIDs:dsCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v6 objectForKey:{v12, v17}];
        v14 = [MusicKit_SoftLinking_MPMusicPlayerItem playerItemForMediaItem:v13];
        if (v14)
        {
          [v5 setObject:v14 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setQueueWithDescriptor:(id)descriptor
{
  _underlyingQueueDescriptor = [descriptor _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController setQueueWithDescriptor:_underlyingQueueDescriptor];
}

- (void)prependQueueDescriptor:(id)descriptor
{
  _underlyingQueueDescriptor = [descriptor _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController prependQueueDescriptor:_underlyingQueueDescriptor];
}

- (void)appendQueueDescriptor:(id)descriptor
{
  _underlyingQueueDescriptor = [descriptor _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController appendQueueDescriptor:_underlyingQueueDescriptor];
}

- (void)performQueueTransaction:(id)transaction
{
  transactionCopy = transaction;
  underlyingPlayerController = self->_underlyingPlayerController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__MusicKit_SoftLinking_MPMusicPlayerController_performQueueTransaction___block_invoke;
  v7[3] = &unk_278229FA8;
  v8 = transactionCopy;
  v6 = transactionCopy;
  [(MPMusicPlayerController *)underlyingPlayerController performQueueTransaction:v7 completionHandler:&__block_literal_global_25];
}

- (int64_t)playbackState
{
  result = [(MPMusicPlayerController *)self->_underlyingPlayerController playbackState];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

- (int64_t)repeatMode
{
  result = [(MPMusicPlayerController *)self->_underlyingPlayerController repeatMode];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)setRepeatMode:(int64_t)mode
{
  if ((mode - 1) >= 3)
  {
    mode = 0;
  }

  [(MPMusicPlayerController *)self->_underlyingPlayerController setRepeatMode:mode];
}

- (int64_t)shuffleMode
{
  result = [(MPMusicPlayerController *)self->_underlyingPlayerController shuffleMode];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)setShuffleMode:(int64_t)mode
{
  if ((mode - 1) >= 3)
  {
    mode = 0;
  }

  [(MPMusicPlayerController *)self->_underlyingPlayerController setShuffleMode:mode];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration
{
  v6 = self->_underlyingPlayerController;
  if (type == 1)
  {
    v7 = v6;
    [(MPMusicPlayerController *)v6 _setApplicationMusicPlayerTransitionType:1 withDuration:duration];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(MPMusicPlayerController *)v6 _setApplicationMusicPlayerTransitionType:0];
  }

  v6 = v7;
LABEL_6:
}

+ (NSString)notificationUserInfoKeyContentItemIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_ptr;
  v10 = get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_ptr;
  if (!get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_9();
    v8[3] = dlsym(v3, "_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDs");
    get_MPMusicPlayerControllerNotificationUserInfoKeyContentItemIDsSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (void)_handleNowPlayingItemDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerNowPlayingItemDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handleQueueDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerPlaybackQueueDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handlePlaybackStateDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:self userInfo:userInfo];
}

@end