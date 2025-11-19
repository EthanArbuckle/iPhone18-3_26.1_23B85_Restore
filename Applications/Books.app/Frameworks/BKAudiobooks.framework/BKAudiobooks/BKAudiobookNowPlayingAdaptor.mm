@interface BKAudiobookNowPlayingAdaptor
+ (id)sharedInstance;
- (BKAudiobookGenericCoverProvider)genericCoverProvider;
- (BKAudiobookNowPlayingAdaptor)initWithPlayer:(id)a3;
- (void)invalidatePlaybackQueue;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)player:(id)a3 chapterDidChange:(id)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)setAudiobookPlayerActiveOutput:(BOOL)a3;
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

- (BKAudiobookNowPlayingAdaptor)initWithPlayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BKAudiobookNowPlayingAdaptor;
  v6 = [(BKAudiobookNowPlayingAdaptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v8 = [(BKAudiobookNowPlayingAdaptor *)v7 player];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)setAudiobookPlayerActiveOutput:(BOOL)a3
{
  if (self->_audiobookPlayerActiveOutput != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_audiobookPlayerActiveOutput = a3;
    v7 = BKAudiobooksNowPlayingAdaptorLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
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

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue:a3];

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:0];
}

- (void)player:(id)a3 chapterDidChange:(id)a4
{
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue:a3];

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:0];
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  if ((a5 - 1) <= 1)
  {
    [(BKAudiobookNowPlayingAdaptor *)self setAudiobookPlayerActiveOutput:1, a4];
  }

  [(BKAudiobookNowPlayingAdaptor *)self nowPlayingInfoChanged:1];
}

- (BKAudiobookGenericCoverProvider)genericCoverProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_genericCoverProvider);

  return WeakRetained;
}

@end