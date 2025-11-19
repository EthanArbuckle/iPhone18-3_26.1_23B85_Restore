@interface _AFAudioSessionCoordinationDeviceInfoMutation
- (_AFAudioSessionCoordinationDeviceInfoMutation)initWithBase:(id)a3;
- (id)getPeerInfo;
- (id)getSystemInfo;
@end

@implementation _AFAudioSessionCoordinationDeviceInfoMutation

- (id)getSystemInfo
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_systemInfo;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationDeviceInfo *)self->_base systemInfo];
  }

  return v2;
}

- (id)getPeerInfo
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_peerInfo;
  }

  else
  {
    v2 = [(AFAudioSessionCoordinationDeviceInfo *)self->_base peerInfo];
  }

  return v2;
}

- (_AFAudioSessionCoordinationDeviceInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFAudioSessionCoordinationDeviceInfoMutation;
  v6 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end