@interface _AFAudioSessionCoordinationSystemInfoMutation
- (BOOL)getIsSupportedAndEnabled;
- (_AFAudioSessionCoordinationSystemInfoMutation)initWithBase:(id)a3;
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
    v2 = self->_mediaRemoteRouteIdentifier;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSystemInfo *)self->_base mediaRemoteRouteIdentifier];
  }

  return v2;
}

- (id)getMediaRemoteGroupIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_mediaRemoteGroupIdentifier;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSystemInfo *)self->_base mediaRemoteGroupIdentifier];
  }

  return v2;
}

- (id)getHomeKitMediaSystemIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_homeKitMediaSystemIdentifier;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSystemInfo *)self->_base homeKitMediaSystemIdentifier];
  }

  return v2;
}

- (id)getHomeKitRoomName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_homeKitRoomName;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSystemInfo *)self->_base homeKitRoomName];
  }

  return v2;
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

- (_AFAudioSessionCoordinationSystemInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationSystemInfoMutation;
  v6 = [(_AFAudioSessionCoordinationSystemInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end