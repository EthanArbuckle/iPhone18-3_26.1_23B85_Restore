@interface LPAudioPlayerMediaPlayableAdaptor
- (BOOL)isPlaying;
- (LPAudioPlayerMediaPlayableAdaptor)initWithPlayer:(id)a3;
- (void)resetPlaybackState;
- (void)setPlaying:(BOOL)a3;
@end

@implementation LPAudioPlayerMediaPlayableAdaptor

- (LPAudioPlayerMediaPlayableAdaptor)initWithPlayer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPAudioPlayerMediaPlayableAdaptor;
  v5 = [(LPAudioPlayerMediaPlayableAdaptor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_player, v4);
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

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v5 = WeakRetained;
  if (v3)
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