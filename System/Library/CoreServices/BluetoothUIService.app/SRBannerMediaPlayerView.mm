@interface SRBannerMediaPlayerView
- (AVPlayer)avPlayer;
- (void)loadMovieLoopWithPath:(id)a3 bannerInstance:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAvPlayer:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SRBannerMediaPlayerView

- (AVPlayer)avPlayer
{
  v2 = [(SRBannerMediaPlayerView *)self playerLayer];
  v3 = [v2 player];

  return v3;
}

- (void)setAvPlayer:(id)a3
{
  v4 = a3;
  v5 = [(SRBannerMediaPlayerView *)self playerLayer];
  [v5 setPlayer:v4];
}

- (void)loadMovieLoopWithPath:(id)a3 bannerInstance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100002CF4;
  v24[4] = sub_100002D04;
  v25 = 0;
  v8 = [NSURL fileURLWithPath:v6 isDirectory:0];
  v9 = objc_alloc_init(AVPlayer);
  [(SRBannerMediaPlayerView *)self setAvPlayer:v9];

  v10 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v10 _setParticipatesInAudioSession:0];

  v11 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v11 setPreventsDisplaySleepDuringVideoPlayback:0];

  v12 = [AVPlayerItem playerItemWithURL:v8];
  playerItem = self->_playerItem;
  self->_playerItem = v12;

  [(AVPlayerItem *)self->_playerItem asset];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002D0C;
  v14 = v20[3] = &unk_1000185A0;
  v22 = self;
  v23 = v24;
  v21 = v14;
  [v14 loadValuesAsynchronouslyForKeys:&off_100019358 completionHandler:v20];
  v15 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v15 replaceCurrentItemWithPlayerItem:self->_playerItem];

  v16 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v16 setAudiovisualBackgroundPlaybackPolicy:3];

  v17 = [(SRBannerMediaPlayerView *)self playerLayer];
  [v17 setHidden:0];

  v18 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v18 play];

  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v19 addObserver:self forKeyPath:@"status" options:5 context:0];

  _Block_object_dispose(v24, 8);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v15 = a5;
  v8 = a4;
  v9 = [(SRBannerMediaPlayerView *)self avPlayer];
  v10 = [v8 isEqual:v9];

  v11 = v15;
  if (v10)
  {
    v12 = [v15 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 integerValue];
    }

    else
    {
      v13 = 0;
    }

    if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D5F8();
    }

    if (v13 == 1)
    {
      if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000D638();
      }

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:@"VideoReadyToPlay" object:self];
    }

    v11 = v15;
  }
}

- (void)start
{
  v2 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v2 play];
}

- (void)stop
{
  v3 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v3 removeObserver:self forKeyPath:@"status" context:0];

  v4 = [(SRBannerMediaPlayerView *)self avPlayer];
  [v4 pause];

  [(SRBannerMediaPlayerView *)self setAvPlayer:0];
  avLooper = self->_avLooper;
  self->_avLooper = 0;

  playerItem = self->_playerItem;
  self->_playerItem = 0;
}

@end