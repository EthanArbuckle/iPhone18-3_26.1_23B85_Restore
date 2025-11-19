@interface MSCRODIOBluetoothElement
- (BOOL)isEqual:(id)a3;
- (MSCRODIOBluetoothElement)initWithAddress:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSCRODIOBluetoothElement

- (MSCRODIOBluetoothElement)initWithAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSCRODIOBluetoothElement;
  v6 = [(MSCRODIOBluetoothElement *)&v9 initWithIOObject:0];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    [v5 UTF8String];
    if (!BTDeviceAddressFromString())
    {
      objc_storeStrong(&v6->_bluetoothAddress, a3);
LABEL_6:
      v7 = v6;
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MSCRODIOBluetoothElement;
  v4 = [(MSCRODIOBluetoothElement *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_bluetoothAddress);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol])
  {
    v5 = [v4 bluetoothAddress];
    v6 = [(NSString *)self->_bluetoothAddress isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end