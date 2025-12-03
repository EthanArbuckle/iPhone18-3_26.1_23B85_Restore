@interface ADCoreBluetoothDevice
- (ADCoreBluetoothDevice)initWithIdentifier:(id)identifier name:(id)name RSSI:(id)i state:(id)state;
- (id)dictionaryRepresentation;
@end

@implementation ADCoreBluetoothDevice

- (id)dictionaryRepresentation
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v4 = v3;
  if (self->_identifier)
  {
    index = self->_index;
    if (index)
    {
      [v3 setObject:index forKey:@"index"];
    }
  }

  RSSI = self->_RSSI;
  if (RSSI)
  {
    [v4 setObject:RSSI forKey:@"RSSI"];
  }

  return v4;
}

- (ADCoreBluetoothDevice)initWithIdentifier:(id)identifier name:(id)name RSSI:(id)i state:(id)state
{
  identifierCopy = identifier;
  nameCopy = name;
  iCopy = i;
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = ADCoreBluetoothDevice;
  v15 = [(ADCoreBluetoothDevice *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v16->_RSSI, i);
    objc_storeStrong(&v16->_state, state);
  }

  return v16;
}

@end