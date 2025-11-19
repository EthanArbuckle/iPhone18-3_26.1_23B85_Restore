@interface _AFAudioSessionCoordinationSnapshotMutation
- (BOOL)getIsAudioSessionActive;
- (_AFAudioSessionCoordinationSnapshotMutation)initWithBase:(id)a3;
- (id)getCurrentOrUpNextDateInterval;
- (id)getLocalActiveAssertionContexts;
- (id)getLocalDevice;
- (id)getLocalPendingAssertionContexts;
- (id)getRemoteActiveAssertionContexts;
- (id)getRemoteDisqualifiedDevices;
- (id)getRemotePendingAssertionContexts;
- (id)getRemoteQualifiedInRangeDevices;
- (id)getRemoteQualifiedOutOfRangeDevices;
@end

@implementation _AFAudioSessionCoordinationSnapshotMutation

- (id)getRemoteDisqualifiedDevices
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_remoteDisqualifiedDevices;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteDisqualifiedDevices];
  }

  return v2;
}

- (id)getRemoteQualifiedOutOfRangeDevices
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_remoteQualifiedOutOfRangeDevices;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteQualifiedOutOfRangeDevices];
  }

  return v2;
}

- (id)getRemoteQualifiedInRangeDevices
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_remoteQualifiedInRangeDevices;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteQualifiedInRangeDevices];
  }

  return v2;
}

- (id)getLocalDevice
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_localDevice;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base localDevice];
  }

  return v2;
}

- (id)getRemotePendingAssertionContexts
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_remotePendingAssertionContexts;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base remotePendingAssertionContexts];
  }

  return v2;
}

- (id)getRemoteActiveAssertionContexts
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_remoteActiveAssertionContexts;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteActiveAssertionContexts];
  }

  return v2;
}

- (id)getLocalPendingAssertionContexts
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_localPendingAssertionContexts;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base localPendingAssertionContexts];
  }

  return v2;
}

- (id)getLocalActiveAssertionContexts
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_localActiveAssertionContexts;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base localActiveAssertionContexts];
  }

  return v2;
}

- (BOOL)getIsAudioSessionActive
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_isAudioSessionActive;
  }

  else
  {
    return [(AFAudioSessionCoordinationSnapshot *)self->_base isAudioSessionActive];
  }
}

- (id)getCurrentOrUpNextDateInterval
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_currentOrUpNextDateInterval;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationSnapshot *)self->_base currentOrUpNextDateInterval];
  }

  return v2;
}

- (_AFAudioSessionCoordinationSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationSnapshotMutation;
  v6 = [(_AFAudioSessionCoordinationSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end