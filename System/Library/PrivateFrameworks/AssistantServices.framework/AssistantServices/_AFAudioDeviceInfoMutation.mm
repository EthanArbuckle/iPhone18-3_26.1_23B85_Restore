@interface _AFAudioDeviceInfoMutation
- (BOOL)getIsRemoteDevice;
- (_AFAudioDeviceInfoMutation)initWithBase:(id)a3;
- (id)getDeviceUID;
- (id)getRoute;
@end

@implementation _AFAudioDeviceInfoMutation

- (id)getDeviceUID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_deviceUID;
  }

  else
  {
    v2 = [(AFAudioDeviceInfo *)self->_base deviceUID];
  }

  return v2;
}

- (BOOL)getIsRemoteDevice
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_isRemoteDevice;
  }

  else
  {
    return [(AFAudioDeviceInfo *)self->_base isRemoteDevice];
  }
}

- (id)getRoute
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_route;
  }

  else
  {
    v2 = [(AFAudioDeviceInfo *)self->_base route];
  }

  return v2;
}

- (_AFAudioDeviceInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFAudioDeviceInfoMutation;
  v6 = [(_AFAudioDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end