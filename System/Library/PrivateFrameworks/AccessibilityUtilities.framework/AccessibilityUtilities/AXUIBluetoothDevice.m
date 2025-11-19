@interface AXUIBluetoothDevice
- (AXUIBluetoothDevice)initWithDevice:(void *)a3 address:(id)a4 helper:(id)a5;
- (AXUIBluetoothDevice)initWithPeripheral:(id)a3 helper:(id)a4;
- (BOOL)connected;
- (BOOL)connecting;
- (BOOL)hasAddress:(id)a3;
- (BOOL)isAppleHIDDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (BOOL)paired;
- (id)address;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identifier;
- (id)name;
- (int)type;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (unsigned)authorizedServices;
- (unsigned)deviceClass;
- (unsigned)majorClass;
- (unsigned)minorClass;
- (unsigned)productId;
- (unsigned)vendorId;
- (void)acceptSSP:(int)a3;
- (void)connect;
- (void)connectWithServices:(unsigned int)a3;
- (void)disconnect;
- (void)setDevice:(void *)a3;
- (void)setPIN:(id)a3;
- (void)unpair;
@end

@implementation AXUIBluetoothDevice

- (AXUIBluetoothDevice)initWithDevice:(void *)a3 address:(id)a4 helper:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AXUIBluetoothDevice;
  v9 = a5;
  v10 = [(AXUIBluetoothDevice *)&v13 init];
  [(AXUIBluetoothDevice *)v10 setDevice:a3, v13.receiver, v13.super_class];
  address = v10->_address;
  v10->_address = v8;

  objc_storeWeak(&v10->_helper, v9);
  return v10;
}

- (AXUIBluetoothDevice)initWithPeripheral:(id)a3 helper:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = AXUIBluetoothDevice;
  v7 = a4;
  v8 = [(AXUIBluetoothDevice *)&v15 init];
  peripheral = v8->_peripheral;
  v8->_peripheral = v6;
  v10 = v6;

  v11 = [(CBPeripheral *)v10 identifier:v15.receiver];
  v12 = [v11 UUIDString];
  address = v8->_address;
  v8->_address = v12;

  objc_storeWeak(&v8->_helper, v7);
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_address copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(CBPeripheral *)self->_peripheral copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  [v5 setDevice:self->_device];
  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(AXUIBluetoothDevice *)self name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXUIBluetoothDevice *)self isEqualToDevice:v4];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AXUIBluetoothDevice *)self address];
  v6 = [v4 address];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(AXUIBluetoothDevice *)self address];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)hasAddress:(id)a3
{
  v4 = a3;
  v5 = [(AXUIBluetoothDevice *)self address];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)setDevice:(void *)a3
{
  if (self->_device != a3)
  {
    self->_device = a3;
  }
}

- (id)name
{
  v9[31] = *MEMORY[0x1E69E9840];
  p_name = &self->_name;
  name = self->_name;
  if (name)
  {
    v4 = name;
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
    v4 = ;
  }

  else
  {
    v4 = [(CBPeripheral *)self->_peripheral name];
  }

  v7 = v4;
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
    v3 = [(CBPeripheral *)self->_peripheral identifier];
    v4 = [v3 UUIDString];
  }

  else
  {
    v4 = [(AXUIBluetoothDevice *)self address];
  }

  return v4;
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
  v6 = [(AXUIBluetoothDevice *)self name];
  v7 = [(AXUIBluetoothDevice *)self address];
  v8 = [v3 stringWithFormat:@"%@<%p>: name:'%@' address:'%@' BTDevice:%p, type:%d", v5, self, v6, v7, self->_device, -[AXUIBluetoothDevice type](self, "type")];

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
    v5 = [MEMORY[0x1E698F468] sharedInstance];
    v6 = [v5 connectingDevices];

    v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:v4])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  LODWORD(v2) = [WeakRetained authorizedServicesForDevice:v2];

  return v2;
}

- (void)connect
{
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained connectDevice:self];
}

- (void)connectWithServices:(unsigned int)a3
{
  v3 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained connectDevice:self withServices:v3];
}

- (void)disconnect
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(AXUIBluetoothDevice *)self isBTLEDevice])
  {
    WeakRetained = objc_loadWeakRetained(&self->_helper);
    v3 = [WeakRetained centralManager];
    [v3 cancelPeripheralConnection:self->_peripheral options:0];
  }

  else if (BTDeviceDisconnect())
  {
    v4 = [MEMORY[0x1E69887B8] sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E69887B8] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v11 = [(AXUIBluetoothDevice *)self name];
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

- (void)setPIN:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained setPincode:v4 forDevice:self];
}

- (void)acceptSSP:(int)a3
{
  v3 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  [WeakRetained acceptSSP:v3 forDevice:self];
}

- (void)unpair
{
  v3 = [(AXUIBluetoothDevice *)self isBTLEDevice];
  WeakRetained = objc_loadWeakRetained(&self->_helper);
  v5 = WeakRetained;
  if (v3)
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