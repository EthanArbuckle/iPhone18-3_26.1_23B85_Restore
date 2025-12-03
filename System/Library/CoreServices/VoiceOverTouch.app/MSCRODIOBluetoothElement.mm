@interface MSCRODIOBluetoothElement
- (BOOL)isEqual:(id)equal;
- (MSCRODIOBluetoothElement)initWithAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MSCRODIOBluetoothElement

- (MSCRODIOBluetoothElement)initWithAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = MSCRODIOBluetoothElement;
  v6 = [(MSCRODIOBluetoothElement *)&v9 initWithIOObject:0];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (addressCopy)
  {
    [addressCopy UTF8String];
    if (!BTDeviceAddressFromString())
    {
      objc_storeStrong(&v6->_bluetoothAddress, address);
LABEL_6:
      v7 = v6;
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MSCRODIOBluetoothElement;
  v4 = [(MSCRODIOBluetoothElement *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_bluetoothAddress);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol])
  {
    bluetoothAddress = [equalCopy bluetoothAddress];
    v6 = [(NSString *)self->_bluetoothAddress isEqualToString:bluetoothAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end