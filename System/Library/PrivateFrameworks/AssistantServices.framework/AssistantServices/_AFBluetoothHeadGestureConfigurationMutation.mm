@interface _AFBluetoothHeadGestureConfigurationMutation
- (BOOL)getIsEnabled;
- (BOOL)getIsSupported;
- (_AFBluetoothHeadGestureConfigurationMutation)initWithBase:(id)a3;
- (int64_t)getAcceptGesture;
- (int64_t)getRejectGesture;
@end

@implementation _AFBluetoothHeadGestureConfigurationMutation

- (int64_t)getRejectGesture
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_rejectGesture;
  }

  else
  {
    return [(AFBluetoothHeadGestureConfiguration *)self->_base rejectGesture];
  }
}

- (int64_t)getAcceptGesture
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_acceptGesture;
  }

  else
  {
    return [(AFBluetoothHeadGestureConfiguration *)self->_base acceptGesture];
  }
}

- (BOOL)getIsSupported
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_isSupported;
  }

  else
  {
    return [(AFBluetoothHeadGestureConfiguration *)self->_base isSupported];
  }
}

- (BOOL)getIsEnabled
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isEnabled;
  }

  else
  {
    return [(AFBluetoothHeadGestureConfiguration *)self->_base isEnabled];
  }
}

- (_AFBluetoothHeadGestureConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFBluetoothHeadGestureConfigurationMutation;
  v6 = [(_AFBluetoothHeadGestureConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end