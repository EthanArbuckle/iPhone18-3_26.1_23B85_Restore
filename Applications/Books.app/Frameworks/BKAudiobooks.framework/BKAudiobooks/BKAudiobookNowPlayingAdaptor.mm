@interface BKAudiobookNowPlayingAdaptor
+ (id)sharedInstance;
- (BKAudiobookGenericCoverProvider)genericCoverProvider;
- (BKAudiobookNowPlayingAdaptor)initWithPlayer:(id)player;
- (void)invalidatePlaybackQueue;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)player:(id)player chapterDidChange:(id)change;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)setAudiobookPlayerActiveOutput:(BOOL)output;
@end

@implementation BKAudiobookNowPlayingAdaptor

+ (id)sharedInstance
{
  if (qword_47928 != -1)
  {
    sub_213C8();
  }

  v3 = qword_47930;

  return v3;
}

- (BKAudiobookNowPlayingAdaptor)initWithPlayer:(id)player
{
  playerCopy = player;
  v10.receiver = self;
  v10.super_class = BKAudiobookNowPlayingAdaptor;
  v6 = [(BKAudiobookNowPlayingAdaptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    player = [(BKAudiobookNowPlayingAdaptor *)v7 player];
    [player addObserver:v7];
  }

  return v7;
}

- (void)setAudiobookPlayerActiveOutput:(BOOL)output
{
  if (self->_audiobookPlayerActiveOutput != output)
  {
    v11 = v3;
    v12 = v4;
    outputCopy = output;
    self->_audiobookPlayerActiveOutput = output;
    v7 = BKAudiobooksNowPlayingAdaptorLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (outputCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "audiobook player set to active", buf, 2u);
      }

      MRMediaRemoteSetCanBeNowPlayingApplication();
      [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "audiobook player set to inactive", v9, 2u);
      }

      MRMediaRemoteSetCanBeNowPlayingApplication();
    }
  }
}

- (void)invalidatePlaybackQueue
{
  v2 = BKAudiobooksNowPlayingAdaptorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "invalidatePlaybackQueue", v4, 2u);
  }

  v3 = +[MPNowPlayingInfoCenter defaultCenter];
  [v3 invalidatePlaybackQueue];
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue:player];

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:0];
}

- (void)player:(id)player chapterDidChange:(id)change
{
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue:player];

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:0];
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if ((to - 1) <= 1)
  {
    [(BKAudiobookNowPlayingAdaptor *)self setAudiobookPlayerActiveOutput:1, from];
  }

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:1];
}

- (BKAudiobookGenericCoverProvider)genericCoverProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_genericCoverProvider);

  return WeakRetained;
}

@end