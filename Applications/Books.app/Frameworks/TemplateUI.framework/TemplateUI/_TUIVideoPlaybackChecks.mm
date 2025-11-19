@interface _TUIVideoPlaybackChecks
- (void)setAssetKeysLoaded:(BOOL)a3;
- (void)setItemIsReadyToPlay:(BOOL)a3;
- (void)setPlaybackLikelyToKeepUp:(BOOL)a3;
- (void)setPlayerHasNoWaitingReason:(BOOL)a3;
@end

@implementation _TUIVideoPlaybackChecks

- (void)setAssetKeysLoaded:(BOOL)a3
{
  if (self->_assetKeysLoaded != a3)
  {
    self->_assetKeysLoaded = a3;
  }
}

- (void)setPlaybackLikelyToKeepUp:(BOOL)a3
{
  if (self->_playbackLikelyToKeepUp != a3)
  {
    self->_playbackLikelyToKeepUp = a3;
  }
}

- (void)setItemIsReadyToPlay:(BOOL)a3
{
  if (self->_itemIsReadyToPlay != a3)
  {
    self->_itemIsReadyToPlay = a3;
  }
}

- (void)setPlayerHasNoWaitingReason:(BOOL)a3
{
  if (self->_playerHasNoWaitingReason != a3)
  {
    self->_playerHasNoWaitingReason = a3;
  }
}

@end