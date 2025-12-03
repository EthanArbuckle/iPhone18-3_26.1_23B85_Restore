@interface _AFAudioSessionCoordinationSnapshotMutation
- (BOOL)getIsAudioSessionActive;
- (_AFAudioSessionCoordinationSnapshotMutation)initWithBase:(id)base;
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
    remoteDisqualifiedDevices = self->_remoteDisqualifiedDevices;
  }

  else
  {
    remoteDisqualifiedDevices = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteDisqualifiedDevices];
  }

  return remoteDisqualifiedDevices;
}

- (id)getRemoteQualifiedOutOfRangeDevices
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    remoteQualifiedOutOfRangeDevices = self->_remoteQualifiedOutOfRangeDevices;
  }

  else
  {
    remoteQualifiedOutOfRangeDevices = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteQualifiedOutOfRangeDevices];
  }

  return remoteQualifiedOutOfRangeDevices;
}

- (id)getRemoteQualifiedInRangeDevices
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    remoteQualifiedInRangeDevices = self->_remoteQualifiedInRangeDevices;
  }

  else
  {
    remoteQualifiedInRangeDevices = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteQualifiedInRangeDevices];
  }

  return remoteQualifiedInRangeDevices;
}

- (id)getLocalDevice
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    localDevice = self->_localDevice;
  }

  else
  {
    localDevice = [(AFAudioSessionCoordinationSnapshot *)self->_base localDevice];
  }

  return localDevice;
}

- (id)getRemotePendingAssertionContexts
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    remotePendingAssertionContexts = self->_remotePendingAssertionContexts;
  }

  else
  {
    remotePendingAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)self->_base remotePendingAssertionContexts];
  }

  return remotePendingAssertionContexts;
}

- (id)getRemoteActiveAssertionContexts
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    remoteActiveAssertionContexts = self->_remoteActiveAssertionContexts;
  }

  else
  {
    remoteActiveAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)self->_base remoteActiveAssertionContexts];
  }

  return remoteActiveAssertionContexts;
}

- (id)getLocalPendingAssertionContexts
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    localPendingAssertionContexts = self->_localPendingAssertionContexts;
  }

  else
  {
    localPendingAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)self->_base localPendingAssertionContexts];
  }

  return localPendingAssertionContexts;
}

- (id)getLocalActiveAssertionContexts
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    localActiveAssertionContexts = self->_localActiveAssertionContexts;
  }

  else
  {
    localActiveAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)self->_base localActiveAssertionContexts];
  }

  return localActiveAssertionContexts;
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
    currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  }

  else
  {
    currentOrUpNextDateInterval = [(AFAudioSessionCoordinationSnapshot *)self->_base currentOrUpNextDateInterval];
  }

  return currentOrUpNextDateInterval;
}

- (_AFAudioSessionCoordinationSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationSnapshotMutation;
  v6 = [(_AFAudioSessionCoordinationSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end