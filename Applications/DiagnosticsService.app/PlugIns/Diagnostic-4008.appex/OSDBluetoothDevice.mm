@interface OSDBluetoothDevice
- (id)description;
@end

@implementation OSDBluetoothDevice

- (id)description
{
  v9.receiver = self;
  v9.super_class = OSDBluetoothDevice;
  v3 = [(OSDBluetoothDevice *)&v9 description];
  name = [(OSDBluetoothDevice *)self name];
  defaultName = [(OSDBluetoothDevice *)self defaultName];
  address = [(OSDBluetoothDevice *)self address];
  v7 = [NSString stringWithFormat:@"%@: %@ %@ [%@]", v3, name, defaultName, address];

  return v7;
}

@end