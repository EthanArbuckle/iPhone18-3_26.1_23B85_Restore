@interface _AFBluetoothWirelessSplitterSessionInfoMutation
- (_AFBluetoothWirelessSplitterSessionInfoMutation)initWithBase:(id)a3;
- (id)getDeviceAddresses;
- (int64_t)getState;
@end

@implementation _AFBluetoothWirelessSplitterSessionInfoMutation

- (id)getDeviceAddresses
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_deviceAddresses;
  }

  else
  {
    v2 = [(AFBluetoothWirelessSplitterSessionInfo *)self->_base deviceAddresses];
  }

  return v2;
}

- (int64_t)getState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_state;
  }

  else
  {
    return [(AFBluetoothWirelessSplitterSessionInfo *)self->_base state];
  }
}

- (_AFBluetoothWirelessSplitterSessionInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFBluetoothWirelessSplitterSessionInfoMutation;
  v6 = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end