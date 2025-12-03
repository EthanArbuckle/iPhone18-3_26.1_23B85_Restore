@interface _AFMediaPlaybackStateSnapshotMutation
- (BOOL)getIsProxyGroupPlayer;
- (_AFMediaPlaybackStateSnapshotMutation)initWithBase:(id)base;
- (id)getGroupIdentifier;
- (id)getMediaType;
- (id)getNowPlayingTimestamp;
- (int64_t)getPlaybackState;
@end

@implementation _AFMediaPlaybackStateSnapshotMutation

- (int64_t)getPlaybackState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_playbackState;
  }

  else
  {
    return [(AFMediaPlaybackStateSnapshot *)self->_base playbackState];
  }
}

- (id)getNowPlayingTimestamp
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    nowPlayingTimestamp = self->_nowPlayingTimestamp;
  }

  else
  {
    nowPlayingTimestamp = [(AFMediaPlaybackStateSnapshot *)self->_base nowPlayingTimestamp];
  }

  return nowPlayingTimestamp;
}

- (id)getMediaType
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    mediaType = self->_mediaType;
  }

  else
  {
    mediaType = [(AFMediaPlaybackStateSnapshot *)self->_base mediaType];
  }

  return mediaType;
}

- (id)getGroupIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    groupIdentifier = self->_groupIdentifier;
  }

  else
  {
    groupIdentifier = [(AFMediaPlaybackStateSnapshot *)self->_base groupIdentifier];
  }

  return groupIdentifier;
}

- (BOOL)getIsProxyGroupPlayer
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_isProxyGroupPlayer;
  }

  else
  {
    return [(AFMediaPlaybackStateSnapshot *)self->_base isProxyGroupPlayer];
  }
}

- (_AFMediaPlaybackStateSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMediaPlaybackStateSnapshotMutation;
  v6 = [(_AFMediaPlaybackStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end