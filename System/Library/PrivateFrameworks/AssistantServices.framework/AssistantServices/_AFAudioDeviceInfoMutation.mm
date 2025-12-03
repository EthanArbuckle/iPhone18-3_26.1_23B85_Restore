@interface _AFAudioDeviceInfoMutation
- (BOOL)getIsRemoteDevice;
- (_AFAudioDeviceInfoMutation)initWithBase:(id)base;
- (id)getDeviceUID;
- (id)getRoute;
@end

@implementation _AFAudioDeviceInfoMutation

- (id)getDeviceUID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    deviceUID = self->_deviceUID;
  }

  else
  {
    deviceUID = [(AFAudioDeviceInfo *)self->_base deviceUID];
  }

  return deviceUID;
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
    route = self->_route;
  }

  else
  {
    route = [(AFAudioDeviceInfo *)self->_base route];
  }

  return route;
}

- (_AFAudioDeviceInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAudioDeviceInfoMutation;
  v6 = [(_AFAudioDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end