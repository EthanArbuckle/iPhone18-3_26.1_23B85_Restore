@interface MusicKit_SoftLinking_MPMusicPlayerController
+ (MusicKit_SoftLinking_MPMusicPlayerController)applicationMusicPlayer;
+ (MusicKit_SoftLinking_MPMusicPlayerController)systemMusicPlayer;
+ (NSString)notificationUserInfoKeyContentItemIDs;
- (MusicKit_SoftLinking_MPMusicPlayerItem)nowPlayingItem;
- (id)_initWithUnderlyingPlayerController:(id)a3;
- (id)itemsForContentItemIDs:(id)a3;
- (int64_t)playbackState;
- (int64_t)repeatMode;
- (int64_t)shuffleMode;
- (void)_handleNowPlayingItemDidChangeNotification:(id)a3;
- (void)_handlePlaybackStateDidChangeNotification:(id)a3;
- (void)_handleQueueDidChangeNotification:(id)a3;
- (void)appendQueueDescriptor:(id)a3;
- (void)dealloc;
- (void)performQueueTransaction:(id)a3;
- (void)prependQueueDescriptor:(id)a3;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4;
- (void)setQueueWithDescriptor:(id)a3;
- (void)setRepeatMode:(int64_t)a3;
- (void)setShuffleMode:(int64_t)a3;
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

- (id)_initWithUnderlyingPlayerController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPMusicPlayerController;
  v6 = [(MusicKit_SoftLinking_MPMusicPlayerController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlayerController, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleNowPlayingItemDidChangeNotification_ name:v9 object:v7->_underlyingPlayerController];

    v10 = getMPMusicPlayerControllerPlaybackStateDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handlePlaybackStateDidChangeNotification_ name:v10 object:v7->_underlyingPlayerController];

    v11 = get_MPMusicPlayerControllerQueueDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleQueueDidChangeNotification_ name:v11 object:v7->_underlyingPlayerController];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingPlayerController];

  v5 = getMPMusicPlayerControllerPlaybackStateDidChangeNotification();
  [v3 removeObserver:self name:v5 object:self->_underlyingPlayerController];

  v6 = get_MPMusicPlayerControllerQueueDidChangeNotification();
  [v3 removeObserver:self name:v6 object:self->_underlyingPlayerController];

  v7.receiver = self;
  v7.super_class = MusicKit_SoftLinking_MPMusicPlayerController;
  [(MusicKit_SoftLinking_MPMusicPlayerController *)&v7 dealloc];
}

- (MusicKit_SoftLinking_MPMusicPlayerItem)nowPlayingItem
{
  v2 = [(MPMusicPlayerController *)self->_underlyingPlayerController nowPlayingItem];
  v3 = [MusicKit_SoftLinking_MPMusicPlayerItem playerItemForMediaItem:v2];

  return v3;
}

- (id)itemsForContentItemIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(MPMusicPlayerController *)self->_underlyingPlayerController _mediaItemsForContentItemIDs:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
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

- (void)setQueueWithDescriptor:(id)a3
{
  v4 = [a3 _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController setQueueWithDescriptor:v4];
}

- (void)prependQueueDescriptor:(id)a3
{
  v4 = [a3 _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController prependQueueDescriptor:v4];
}

- (void)appendQueueDescriptor:(id)a3
{
  v4 = [a3 _underlyingQueueDescriptor];
  [(MPMusicPlayerController *)self->_underlyingPlayerController appendQueueDescriptor:v4];
}

- (void)performQueueTransaction:(id)a3
{
  v4 = a3;
  underlyingPlayerController = self->_underlyingPlayerController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__MusicKit_SoftLinking_MPMusicPlayerController_performQueueTransaction___block_invoke;
  v7[3] = &unk_278229FA8;
  v8 = v4;
  v6 = v4;
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

- (void)setRepeatMode:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    a3 = 0;
  }

  [(MPMusicPlayerController *)self->_underlyingPlayerController setRepeatMode:a3];
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

- (void)setShuffleMode:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    a3 = 0;
  }

  [(MPMusicPlayerController *)self->_underlyingPlayerController setShuffleMode:a3];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4
{
  v6 = self->_underlyingPlayerController;
  if (a3 == 1)
  {
    v7 = v6;
    [(MPMusicPlayerController *)v6 _setApplicationMusicPlayerTransitionType:1 withDuration:a4];
  }

  else
  {
    if (a3)
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

- (void)_handleNowPlayingItemDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerNowPlayingItemDidChangeNotification" object:self userInfo:v6];
}

- (void)_handleQueueDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerPlaybackQueueDidChangeNotification" object:self userInfo:v6];
}

- (void)_handlePlaybackStateDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:self userInfo:v6];
}

@end