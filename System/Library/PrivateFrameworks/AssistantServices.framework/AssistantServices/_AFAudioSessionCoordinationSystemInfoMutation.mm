@interface _AFAudioSessionCoordinationSystemInfoMutation
- (BOOL)getIsSupportedAndEnabled;
- (_AFAudioSessionCoordinationSystemInfoMutation)initWithBase:(id)base;
- (id)getHomeKitMediaSystemIdentifier;
- (id)getHomeKitRoomName;
- (id)getMediaRemoteGroupIdentifier;
- (id)getMediaRemoteRouteIdentifier;
@end

@implementation _AFAudioSessionCoordinationSystemInfoMutation

- (id)getMediaRemoteRouteIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    mediaRemoteRouteIdentifier = self->_mediaRemoteRouteIdentifier;
  }

  else
  {
    mediaRemoteRouteIdentifier = [(AFAudioSessionCoordinationSystemInfo *)self->_base mediaRemoteRouteIdentifier];
  }

  return mediaRemoteRouteIdentifier;
}

- (id)getMediaRemoteGroupIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    mediaRemoteGroupIdentifier = self->_mediaRemoteGroupIdentifier;
  }

  else
  {
    mediaRemoteGroupIdentifier = [(AFAudioSessionCoordinationSystemInfo *)self->_base mediaRemoteGroupIdentifier];
  }

  return mediaRemoteGroupIdentifier;
}

- (id)getHomeKitMediaSystemIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    homeKitMediaSystemIdentifier = self->_homeKitMediaSystemIdentifier;
  }

  else
  {
    homeKitMediaSystemIdentifier = [(AFAudioSessionCoordinationSystemInfo *)self->_base homeKitMediaSystemIdentifier];
  }

  return homeKitMediaSystemIdentifier;
}

- (id)getHomeKitRoomName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    homeKitRoomName = self->_homeKitRoomName;
  }

  else
  {
    homeKitRoomName = [(AFAudioSessionCoordinationSystemInfo *)self->_base homeKitRoomName];
  }

  return homeKitRoomName;
}

- (BOOL)getIsSupportedAndEnabled
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isSupportedAndEnabled;
  }

  else
  {
    return [(AFAudioSessionCoordinationSystemInfo *)self->_base isSupportedAndEnabled];
  }
}

- (_AFAudioSessionCoordinationSystemInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationSystemInfoMutation;
  v6 = [(_AFAudioSessionCoordinationSystemInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end