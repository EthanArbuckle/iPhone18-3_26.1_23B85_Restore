@interface _AFAudioSessionCoordinationDeviceInfoMutation
- (_AFAudioSessionCoordinationDeviceInfoMutation)initWithBase:(id)base;
- (id)getPeerInfo;
- (id)getSystemInfo;
@end

@implementation _AFAudioSessionCoordinationDeviceInfoMutation

- (id)getSystemInfo
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    systemInfo = self->_systemInfo;
  }

  else
  {
    systemInfo = [(AFAudioSessionCoordinationDeviceInfo *)self->_base systemInfo];
  }

  return systemInfo;
}

- (id)getPeerInfo
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    peerInfo = self->_peerInfo;
  }

  else
  {
    peerInfo = [(AFAudioSessionCoordinationDeviceInfo *)self->_base peerInfo];
  }

  return peerInfo;
}

- (_AFAudioSessionCoordinationDeviceInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationDeviceInfoMutation;
  v6 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end