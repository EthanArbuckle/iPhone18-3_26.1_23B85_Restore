@interface SRBannerMediaPlayerView
- (AVPlayer)avPlayer;
- (void)loadMovieLoopWithPath:(id)path bannerInstance:(id)instance;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAvPlayer:(id)player;
- (void)start;
- (void)stop;
@end

@implementation SRBannerMediaPlayerView

- (AVPlayer)avPlayer
{
  playerLayer = [(SRBannerMediaPlayerView *)self playerLayer];
  player = [playerLayer player];

  return player;
}

- (void)setAvPlayer:(id)player
{
  playerCopy = player;
  playerLayer = [(SRBannerMediaPlayerView *)self playerLayer];
  [playerLayer setPlayer:playerCopy];
}

- (void)loadMovieLoopWithPath:(id)path bannerInstance:(id)instance
{
  pathCopy = path;
  instanceCopy = instance;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100002CF4;
  v24[4] = sub_100002D04;
  v25 = 0;
  v8 = [NSURL fileURLWithPath:pathCopy isDirectory:0];
  v9 = objc_alloc_init(AVPlayer);
  [(SRBannerMediaPlayerView *)self setAvPlayer:v9];

  avPlayer = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer _setParticipatesInAudioSession:0];

  avPlayer2 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer2 setPreventsDisplaySleepDuringVideoPlayback:0];

  v12 = [AVPlayerItem playerItemWithURL:v8];
  playerItem = self->_playerItem;
  self->_playerItem = v12;

  [(AVPlayerItem *)self->_playerItem asset];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002D0C;
  v14 = v20[3] = &unk_1000185A0;
  selfCopy = self;
  v23 = v24;
  v21 = v14;
  [v14 loadValuesAsynchronouslyForKeys:&off_100019358 completionHandler:v20];
  avPlayer3 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer3 replaceCurrentItemWithPlayerItem:self->_playerItem];

  avPlayer4 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer4 setAudiovisualBackgroundPlaybackPolicy:3];

  playerLayer = [(SRBannerMediaPlayerView *)self playerLayer];
  [playerLayer setHidden:0];

  avPlayer5 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer5 play];

  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  avPlayer6 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer6 addObserver:self forKeyPath:@"status" options:5 context:0];

  _Block_object_dispose(v24, 8);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  avPlayer = [(SRBannerMediaPlayerView *)self avPlayer];
  v10 = [objectCopy isEqual:avPlayer];

  v11 = changeCopy;
  if (v10)
  {
    v12 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v12 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D5F8();
    }

    if (integerValue == 1)
    {
      if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000D638();
      }

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:@"VideoReadyToPlay" object:self];
    }

    v11 = changeCopy;
  }
}

- (void)start
{
  avPlayer = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer play];
}

- (void)stop
{
  avPlayer = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer removeObserver:self forKeyPath:@"status" context:0];

  avPlayer2 = [(SRBannerMediaPlayerView *)self avPlayer];
  [avPlayer2 pause];

  [(SRBannerMediaPlayerView *)self setAvPlayer:0];
  avLooper = self->_avLooper;
  self->_avLooper = 0;

  playerItem = self->_playerItem;
  self->_playerItem = 0;
}

@end