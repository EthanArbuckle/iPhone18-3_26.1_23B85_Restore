@interface VMAudioPlayerImp
- ($F24F406B2B787EFB06265DBA3D28CBD5)playableRange;
- (BOOL)startPlaying;
- (BOOL)willPlayPendingPreparation;
- (VMAudioPlayerController)controller;
- (VMAudioPlayerImp)init;
- (double)playerTime;
- (void)_updatePlayerItemSpeechIsolator;
- (void)dealloc;
- (void)setCurrentState:(int)a3;
- (void)setLayerMix:(float)a3;
- (void)setLooping:(BOOL)a3;
- (void)setPlayableRange:(id)a3;
- (void)setPlaybackError:(id)a3;
- (void)setPlayerItem:(id)a3;
- (void)setSpeechIsolatorEnabled:(BOOL)a3;
- (void)setSpeechIsolatorValue:(float)a3;
@end

@implementation VMAudioPlayerImp

- (VMAudioPlayerImp)init
{
  v3.receiver = self;
  v3.super_class = VMAudioPlayerImp;
  result = [(VMAudioPlayerImp *)&v3 init];
  if (result)
  {
    result->_targetRate = 1.0;
    result->_playableRange = RCTimeRangeEverything;
    LODWORD(result->_speechIsolatorValue) = kDefaultSpeechIsolatorValue;
  }

  return result;
}

- (void)dealloc
{
  [(VMAudioService *)self->_service stopPlaying:self];
  v3.receiver = self;
  v3.super_class = VMAudioPlayerImp;
  [(VMAudioPlayerImp *)&v3 dealloc];
}

- (double)playerTime
{
  if ([(VMPlayerItem *)self->_playerItem seeking])
  {
    return self->_targetTime;
  }

  playerItem = self->_playerItem;

  [(VMPlayerItem *)playerItem currentTime];
  return result;
}

- (void)setCurrentState:(int)a3
{
  currentState = self->_currentState;
  self->_currentState = a3;
  if ((a3 == 3) != [(VMAudioPlayerImp *)self playing])
  {
    [(VMAudioPlayerImp *)self setPlaying:a3 == 3];
  }

  if (a3 == 4 && currentState == 3)
  {
    targetState = self->_targetState;
    if (targetState == 4)
    {
      [(VMAudioPlayerImp *)self playerTime];
    }

    else
    {
      if (targetState != 3)
      {
        return;
      }

      beginTime = self->_playableRange.beginTime;
    }

    self->_targetTime = beginTime;
  }
}

- (void)setPlaybackError:(id)a3
{
  objc_storeStrong(&self->_playbackError, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained setPlaybackError:v5];
}

- (BOOL)startPlaying
{
  self->_targetState = 3;
  [(VMAudioService *)self->_service startPlaying:self];
  return 1;
}

- (void)setLooping:(BOOL)a3
{
  v3 = a3;
  self->_looping = a3;
  v4 = [(VMAudioPlayerImp *)self playerItem];
  if (v4)
  {
    v5 = v4;
    [v4 setLooping:v3];
    v4 = v5;
  }
}

- (void)setLayerMix:(float)a3
{
  self->_layerMix = a3;
  v4 = [(VMAudioPlayerImp *)self playerItem];
  if (v4)
  {
    *&v5 = a3;
    v7 = v4;
    v6 = sub_100059888(v5);
    [v7 setTrackVolumes:v6];

    v4 = v7;
  }
}

- (void)setSpeechIsolatorEnabled:(BOOL)a3
{
  if (self->_speechIsolatorEnabled != a3)
  {
    v4 = a3;
    self->_speechIsolatorEnabled = a3;
    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    service = self->_service;

    [(VMAudioService *)service setSpeechIsolatorEnabled:v4 controller:self];
  }
}

- (void)setSpeechIsolatorValue:(float)a3
{
  if (self->_speechIsolatorValue != a3)
  {
    self->_speechIsolatorValue = a3;
    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    service = self->_service;
    *&v6 = a3;

    [(VMAudioService *)service setSpeechIsolatorValue:self controller:v6];
  }
}

- (void)_updatePlayerItemSpeechIsolator
{
  v3 = [(VMAudioPlayerImp *)self playerItem];
  if (v3)
  {
    v4 = 0.0;
    if (self->_speechIsolatorEnabled)
    {
      *&v4 = self->_speechIsolatorValue;
    }

    v5 = v3;
    [v3 setSpeechIsolatorValue:v4];
    v3 = v5;
  }
}

- (void)setPlayableRange:(id)a3
{
  var1 = a3.var1;
  self->_playableRange = a3;
  v4 = [(VMAudioPlayerImp *)self playerItem];
  if (v4)
  {
    v5 = v4;
    [v4 setPlayableRangeEndTime:var1];
    v4 = v5;
  }
}

- (BOOL)willPlayPendingPreparation
{
  if (self->_targetState != 3)
  {
    return 0;
  }

  if ((self->_currentState - 1) >= 2)
  {
    return [(VMPlayerItem *)self->_playerItem seeking];
  }

  return 1;
}

- (void)setPlayerItem:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_playerItem, a3);
  if (v7)
  {
    [v7 setLooping:self->_looping];
    *&v5 = self->_layerMix;
    v6 = sub_100059888(v5);
    [v7 setTrackVolumes:v6];

    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    [v7 setPlayableRangeEndTime:self->_playableRange.endTime];
  }
}

- (VMAudioPlayerController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)playableRange
{
  beginTime = self->_playableRange.beginTime;
  endTime = self->_playableRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end