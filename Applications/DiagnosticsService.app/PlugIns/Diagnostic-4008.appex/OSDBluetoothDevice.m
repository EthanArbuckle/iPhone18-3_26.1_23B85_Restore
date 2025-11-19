@interface OSDBluetoothDevice
- (id)description;
@end

@implementation OSDBluetoothDevice

- (id)description
{
  v9.receiver = self;
  v9.super_class = OSDBluetoothDevice;
  v3 = [(OSDBluetoothDevice *)&v9 description];
  v4 = [(OSDBluetoothDevice *)self name];
  v5 = [(OSDBluetoothDevice *)self defaultName];
  v6 = [(OSDBluetoothDevice *)self address];
  v7 = [NSString stringWithFormat:@"%@: %@ %@ [%@]", v3, v4, v5, v6];

  return v7;
}

@end