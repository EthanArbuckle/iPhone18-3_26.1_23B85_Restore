@interface _TUIVideoPlaybackChecks
- (void)setAssetKeysLoaded:(BOOL)loaded;
- (void)setItemIsReadyToPlay:(BOOL)play;
- (void)setPlaybackLikelyToKeepUp:(BOOL)up;
- (void)setPlayerHasNoWaitingReason:(BOOL)reason;
@end

@implementation _TUIVideoPlaybackChecks

- (void)setAssetKeysLoaded:(BOOL)loaded
{
  if (self->_assetKeysLoaded != loaded)
  {
    self->_assetKeysLoaded = loaded;
  }
}

- (void)setPlaybackLikelyToKeepUp:(BOOL)up
{
  if (self->_playbackLikelyToKeepUp != up)
  {
    self->_playbackLikelyToKeepUp = up;
  }
}

- (void)setItemIsReadyToPlay:(BOOL)play
{
  if (self->_itemIsReadyToPlay != play)
  {
    self->_itemIsReadyToPlay = play;
  }
}

- (void)setPlayerHasNoWaitingReason:(BOOL)reason
{
  if (self->_playerHasNoWaitingReason != reason)
  {
    self->_playerHasNoWaitingReason = reason;
  }
}

@end