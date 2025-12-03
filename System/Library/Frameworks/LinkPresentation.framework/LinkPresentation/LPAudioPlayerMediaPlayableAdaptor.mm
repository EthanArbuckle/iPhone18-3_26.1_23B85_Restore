@interface LPAudioPlayerMediaPlayableAdaptor
- (BOOL)isPlaying;
- (LPAudioPlayerMediaPlayableAdaptor)initWithPlayer:(id)player;
- (void)resetPlaybackState;
- (void)setPlaying:(BOOL)playing;
@end

@implementation LPAudioPlayerMediaPlayableAdaptor

- (LPAudioPlayerMediaPlayableAdaptor)initWithPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = LPAudioPlayerMediaPlayableAdaptor;
  v5 = [(LPAudioPlayerMediaPlayableAdaptor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_player, playerCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)isPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v3 = [WeakRetained state] == 2;

  return v3;
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v5 = WeakRetained;
  if (playingCopy)
  {
    [WeakRetained play];
  }

  else
  {
    [WeakRetained pause];
  }
}

- (void)resetPlaybackState
{
  WeakRetained = objc_loadWeakRetained(&self->_player);
  [WeakRetained reset];
}

@end