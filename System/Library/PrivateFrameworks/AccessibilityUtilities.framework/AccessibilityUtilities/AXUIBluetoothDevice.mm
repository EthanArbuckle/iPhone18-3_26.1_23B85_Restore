@interface AXUIBluetoothDevice
- (AXUIBluetoothDevice)initWithDevice:(void *)device address:(id)address helper:(id)helper;
- (AXUIBluetoothDevice)initWithPeripheral:(id)peripheral helper:(id)helper;
- (BOOL)connected;
- (BOOL)connecting;
- (BOOL)hasAddress:(id)address;
- (BOOL)isAppleHIDDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)paired;
- (id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifier;
- (id)name;
- (int)type;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (unsigned)authorizedServices;
- (unsigned)deviceClass;
- (unsigned)majorClass;
- (unsigned)minorClass;
- (unsigned)productId;
- (unsigned)vendorId;
- (void)acceptSSP:(int)p;
- (void)connect;
- (void)connectWithServices:(unsigned int)services;
- (void)disconnect;
- (void)setDevice:(void *)device;
- (void)setPIN:(id)n;
- (void)unpair;
@end

@implementation AXUIBluetoothDevice

- (AXUIBluetoothDevice)initWithDevice:(void *)device address:(id)address helper:(id)helper
{
  addressCopy = address;
  v13.receiver = self;
  v13.super_class = AXUIBluetoothDevice;
  helperCopy = helper;
  v10 = [(AXUIBluetoothDevice *)&v13 init];
  [(AXUIBluetoothDevice *)v10 setDevice:device, v13.receiver, v13.super_class];
  address = v10->_address;
  v10->_address = addressCopy;

  objc_storeWeak(&v10->_helper, helperCopy);
  return v10;
}

- (AXUIBluetoothDevice)initWithPeripheral:(id)peripheral helper:(id)helper
{
  peripheralCopy = peripheral;
  v15.receiver = self;
  v15.super_class = AXUIBluetoothDevice;
  helperCopy = helper;
  v8 = [(AXUIBluetoothDevice *)&v15 init];
  peripheral = v8->_peripheral;
  v8->_peripheral = peripheralCopy;
  v10 = peripheralCopy;

  v11 = [(CBPeripheral *)v10 identifier:v15.receiver];
  uUIDString = [v11 UUIDString];
  address = v8->_address;
  v8->_address = uUIDString;

  objc_storeWeak(&v8->_helper, helperCopy);
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_address copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(CBPeripheral *)self->_peripheral copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  [v5 setDevice:self->_device];
  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  name = [(AXUIBluetoothDevice *)self name];
  name2 = [compareCopy name];

  v7 = [name localizedCaseInsensitiveCompare:name2];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXUIBluetoothDevice *)self isEqualToDevice:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  if (!device)
  {
    return 0;
  }

  deviceCopy = device;
  address = [(AXUIBluetoothDevice *)self address];
  address2 = [deviceCopy address];

  LOBYTE(deviceCopy) = [address isEqualToString:address2];
  return deviceCopy;
}

- (unint64_t)hash
{
  address = [(AXUIBluetoothDevice *)self address];
  v3 = [address hash];

  return v3;
}

- (BOOL)hasAddress:(id)address
{
  addressCopy = address;
  address = [(AXUIBluetoothDevice *)self address];
  v6 = [address isEqualToString:addressCopy];

  return v6;
}

- (void)setDevice:(void *)device
{
  if (self->_device != device)
  {
    self->_device = device;
  }
}

- (id)name
{
  v9[31] = *MEMORY[0x1E69E9840];
  p_name = &self->_name;
  name = self->_name;
  if (name)
  {
    name = name;
  }

  else if ([(AXUIBluetoothDevice *)self isClassicDevice])
  {
    if (!BTDeviceGetName())
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      if (v6)
      {
        v7 = v6;
        objc_storeStrong(p_name, v6);
        goto LABEL_13;
      }
    }

    if (BTDeviceGetDefaultName())
    {
      [(AXUIBluetoothDevice *)self address];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    }
    name = ;
  }

  else
  {
    name = [(CBPeripheral *)self->_peripheral name];
  }

  v7 = name;
LABEL_13:

  return v7;
}

- (id)address
{
  address = self->_address;
  if (!address)
  {
    v4 = AXUIAddressForBTDevice();
    v5 = self->_address;
    self->_address = v4;

    address = self->_address;
  }

  return address;
}

- (id)identifier
{
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    identifier = [(CBPeripheral *)self->_peripheral identifier];
    uUIDString = [identifier UUIDString];
  }

  else
  {
    uUIDString = [(AXUIBluetoothDevice *)self address];
  }

  return uUIDString;
}

- (int)type
{
  if (BTDeviceGetDeviceType())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)majorClass
{
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)minorClass
{
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)deviceClass
{
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)vendorId
{
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)productId
{
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(AXUIBluetoothDevice *)self name];
  address = [(AXUIBluetoothDevice *)self address];
  v8 = [v3 stringWithFormat:@"%@<%p>: name:'%@' address:'%@' BTDevice:%p, type:%d", v5, self, name, address, self->_device, -[AXUIBluetoothDevice type](self, "type")];

  return v8;
}

- (BOOL)paired
{
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    WeakRetained = objc_loadWeakRetained(&self->_helper);
    v4 = [WeakRetained btleDeviceIsPaired:self];

    return v4;
  }

  else
  {
    BTDeviceGetPairingStatus();
    return 0;
  }
}

- (BOOL)connected
{
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    peripheral = self->_peripheral;

    return [(CBPeripheral *)peripheral isConnectedToSystem];
  }

  else
  {
    BTDeviceGetConnectedServices();
    return 0;
  }
}

- (BOOL)connecting
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    LOBYTE(v3) = [(CBPeripheral *)self->_peripheral state]== CBPeripheralStateConnecting;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E698F460]) initWithDevice:self->_device address:self->_address];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    connectingDevices = [mEMORY[0x1E698F468] connectingDevices];

    v3 = [connectingDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(connectingDevices);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:v4])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [connectingDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (unsigned)authorizedServices
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  LODWORD(selfCopy) = [WeakRetained authorizedServicesForDevice:selfCopy];

  return selfCopy;
}

- (void)connect
{
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained connectDevice:self];
}

- (void)connectWithServices:(unsigned int)services
{
  v3 = *&services;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained connectDevice:self withServices:v3];
}

- (void)disconnect
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    WeakRetained = objc_loadWeakRetained(&self->_helper);
    centralManager = [WeakRetained centralManager];
    [centralManager cancelPeripheralConnection:self->_peripheral options:0];
  }

  else if (BTDeviceDisconnect())
  {
    mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
    ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x1E69887B8] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        name = [(AXUIBluetoothDevice *)self name];
        v10 = _AXStringForArgs();

        if (os_log_type_enabled(v7, v8))
        {
          *buf = 138543362;
          v14 = v10;
          _os_log_impl(&dword_18B15E000, v7, v8, "%{public}@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)setPIN:(id)n
{
  nCopy = n;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained setPincode:nCopy forDevice:self];
}

- (void)acceptSSP:(int)p
{
  v3 = *&p;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained acceptSSP:v3 forDevice:self];
}

- (void)unpair
{
  isBTLEDevice = [(AXUIBluetoothDevice *)self isBTLEDevice];
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  v5 = WeakRetained;
  if (isBTLEDevice)
  {
    [WeakRetained unpairBTLEDevice:self];
  }

  else
  {
    [WeakRetained unpairDevice:self];
  }
}

- (BOOL)isAppleHIDDevice
{
  if ([(AXUIBluetoothDevice *)self vendorId]!= 1452)
  {
    return [(AXUIBluetoothDevice *)self vendorId]== 76 && ([(AXUIBluetoothDevice *)self productId]== 613 || [(AXUIBluetoothDevice *)self productId]== 617);
  }

  return [(AXUIBluetoothDevice *)self productId]== 777 || [(AXUIBluetoothDevice *)self productId]== 780 || [(AXUIBluetoothDevice *)self productId]== 781 || [(AXUIBluetoothDevice *)self productId]== 782 || [(AXUIBluetoothDevice *)self productId]== 784;
}

@end