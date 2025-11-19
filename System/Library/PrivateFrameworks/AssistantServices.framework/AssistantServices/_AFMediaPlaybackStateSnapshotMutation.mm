@interface _AFMediaPlaybackStateSnapshotMutation
- (BOOL)getIsProxyGroupPlayer;
- (_AFMediaPlaybackStateSnapshotMutation)initWithBase:(id)a3;
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
    v2 = self->_nowPlayingTimestamp;
  }

  else
  {
    v2 = [(AFMediaPlaybackStateSnapshot *)self->_base nowPlayingTimestamp];
  }

  return v2;
}

- (id)getMediaType
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_mediaType;
  }

  else
  {
    v2 = [(AFMediaPlaybackStateSnapshot *)self->_base mediaType];
  }

  return v2;
}

- (id)getGroupIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_groupIdentifier;
  }

  else
  {
    v2 = [(AFMediaPlaybackStateSnapshot *)self->_base groupIdentifier];
  }

  return v2;
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

- (_AFMediaPlaybackStateSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMediaPlaybackStateSnapshotMutation;
  v6 = [(_AFMediaPlaybackStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end