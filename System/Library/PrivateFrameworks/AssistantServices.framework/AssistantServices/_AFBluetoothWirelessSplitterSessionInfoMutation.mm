@interface _AFBluetoothWirelessSplitterSessionInfoMutation
- (_AFBluetoothWirelessSplitterSessionInfoMutation)initWithBase:(id)base;
- (id)getDeviceAddresses;
- (int64_t)getState;
@end

@implementation _AFBluetoothWirelessSplitterSessionInfoMutation

- (id)getDeviceAddresses
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    deviceAddresses = self->_deviceAddresses;
  }

  else
  {
    deviceAddresses = [(AFBluetoothWirelessSplitterSessionInfo *)self->_base deviceAddresses];
  }

  return deviceAddresses;
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

- (_AFBluetoothWirelessSplitterSessionInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFBluetoothWirelessSplitterSessionInfoMutation;
  v6 = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end