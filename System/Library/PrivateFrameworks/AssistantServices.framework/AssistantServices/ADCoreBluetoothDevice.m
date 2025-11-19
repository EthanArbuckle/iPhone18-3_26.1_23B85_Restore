@interface ADCoreBluetoothDevice
- (ADCoreBluetoothDevice)initWithIdentifier:(id)a3 name:(id)a4 RSSI:(id)a5 state:(id)a6;
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

- (ADCoreBluetoothDevice)initWithIdentifier:(id)a3 name:(id)a4 RSSI:(id)a5 state:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ADCoreBluetoothDevice;
  v15 = [(ADCoreBluetoothDevice *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_name, a4);
    objc_storeStrong(&v16->_RSSI, a5);
    objc_storeStrong(&v16->_state, a6);
  }

  return v16;
}

@end