@interface _AFSiriActivationContextMutation
- (_AFSiriActivationContextMutation)initWithBase:(id)base;
- (id)getDeviceID;
- (id)getUserInfo;
- (int64_t)getEvent;
- (int64_t)getSource;
- (unint64_t)getOptions;
- (unint64_t)getTimestamp;
@end

@implementation _AFSiriActivationContextMutation

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = [(AFSiriActivationContext *)self->_base userInfo];
  }

  return userInfo;
}

- (id)getDeviceID
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    deviceID = self->_deviceID;
  }

  else
  {
    deviceID = [(AFSiriActivationContext *)self->_base deviceID];
  }

  return deviceID;
}

- (unint64_t)getOptions
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_options;
  }

  else
  {
    return [(AFSiriActivationContext *)self->_base options];
  }
}

- (int64_t)getEvent
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_event;
  }

  else
  {
    return [(AFSiriActivationContext *)self->_base event];
  }
}

- (int64_t)getSource
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_source;
  }

  else
  {
    return [(AFSiriActivationContext *)self->_base source];
  }
}

- (unint64_t)getTimestamp
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_timestamp;
  }

  else
  {
    return [(AFSiriActivationContext *)self->_base timestamp];
  }
}

- (_AFSiriActivationContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSiriActivationContextMutation;
  v6 = [(_AFSiriActivationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end