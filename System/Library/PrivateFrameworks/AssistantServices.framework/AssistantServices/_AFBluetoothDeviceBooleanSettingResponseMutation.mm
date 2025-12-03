@interface _AFBluetoothDeviceBooleanSettingResponseMutation
- (_AFBluetoothDeviceBooleanSettingResponseMutation)initWithBase:(id)base;
- (int64_t)getStatus;
- (int64_t)getValue;
@end

@implementation _AFBluetoothDeviceBooleanSettingResponseMutation

- (int64_t)getStatus
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return [(AFBluetoothDeviceBooleanSettingResponse *)self->_base status];
  }
}

- (int64_t)getValue
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_value;
  }

  else
  {
    return [(AFBluetoothDeviceBooleanSettingResponse *)self->_base value];
  }
}

- (_AFBluetoothDeviceBooleanSettingResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFBluetoothDeviceBooleanSettingResponseMutation;
  v6 = [(_AFBluetoothDeviceBooleanSettingResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end