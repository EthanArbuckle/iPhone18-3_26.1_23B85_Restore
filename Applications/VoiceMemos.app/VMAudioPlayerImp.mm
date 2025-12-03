@interface VMAudioPlayerImp
- ($F24F406B2B787EFB06265DBA3D28CBD5)playableRange;
- (BOOL)startPlaying;
- (BOOL)willPlayPendingPreparation;
- (VMAudioPlayerController)controller;
- (VMAudioPlayerImp)init;
- (double)playerTime;
- (void)_updatePlayerItemSpeechIsolator;
- (void)dealloc;
- (void)setCurrentState:(int)state;
- (void)setLayerMix:(float)mix;
- (void)setLooping:(BOOL)looping;
- (void)setPlayableRange:(id)range;
- (void)setPlaybackError:(id)error;
- (void)setPlayerItem:(id)item;
- (void)setSpeechIsolatorEnabled:(BOOL)enabled;
- (void)setSpeechIsolatorValue:(float)value;
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

- (void)setCurrentState:(int)state
{
  currentState = self->_currentState;
  self->_currentState = state;
  if ((state == 3) != [(VMAudioPlayerImp *)self playing])
  {
    [(VMAudioPlayerImp *)self setPlaying:state == 3];
  }

  if (state == 4 && currentState == 3)
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

- (void)setPlaybackError:(id)error
{
  objc_storeStrong(&self->_playbackError, error);
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained setPlaybackError:errorCopy];
}

- (BOOL)startPlaying
{
  self->_targetState = 3;
  [(VMAudioService *)self->_service startPlaying:self];
  return 1;
}

- (void)setLooping:(BOOL)looping
{
  loopingCopy = looping;
  self->_looping = looping;
  playerItem = [(VMAudioPlayerImp *)self playerItem];
  if (playerItem)
  {
    v5 = playerItem;
    [playerItem setLooping:loopingCopy];
    playerItem = v5;
  }
}

- (void)setLayerMix:(float)mix
{
  self->_layerMix = mix;
  playerItem = [(VMAudioPlayerImp *)self playerItem];
  if (playerItem)
  {
    *&v5 = mix;
    v7 = playerItem;
    v6 = sub_100059888(v5);
    [v7 setTrackVolumes:v6];

    playerItem = v7;
  }
}

- (void)setSpeechIsolatorEnabled:(BOOL)enabled
{
  if (self->_speechIsolatorEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_speechIsolatorEnabled = enabled;
    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    service = self->_service;

    [(VMAudioService *)service setSpeechIsolatorEnabled:enabledCopy controller:self];
  }
}

- (void)setSpeechIsolatorValue:(float)value
{
  if (self->_speechIsolatorValue != value)
  {
    self->_speechIsolatorValue = value;
    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    service = self->_service;
    *&v6 = value;

    [(VMAudioService *)service setSpeechIsolatorValue:self controller:v6];
  }
}

- (void)_updatePlayerItemSpeechIsolator
{
  playerItem = [(VMAudioPlayerImp *)self playerItem];
  if (playerItem)
  {
    v4 = 0.0;
    if (self->_speechIsolatorEnabled)
    {
      *&v4 = self->_speechIsolatorValue;
    }

    v5 = playerItem;
    [playerItem setSpeechIsolatorValue:v4];
    playerItem = v5;
  }
}

- (void)setPlayableRange:(id)range
{
  var1 = range.var1;
  self->_playableRange = range;
  playerItem = [(VMAudioPlayerImp *)self playerItem];
  if (playerItem)
  {
    v5 = playerItem;
    [playerItem setPlayableRangeEndTime:var1];
    playerItem = v5;
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

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_playerItem, item);
  if (itemCopy)
  {
    [itemCopy setLooping:self->_looping];
    *&v5 = self->_layerMix;
    v6 = sub_100059888(v5);
    [itemCopy setTrackVolumes:v6];

    [(VMAudioPlayerImp *)self _updatePlayerItemSpeechIsolator];
    [itemCopy setPlayableRangeEndTime:self->_playableRange.endTime];
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