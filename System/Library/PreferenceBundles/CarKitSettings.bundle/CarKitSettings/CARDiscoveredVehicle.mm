@interface CARDiscoveredVehicle
- (BOOL)isConnecting;
- (CARBluetoothClassicDevice)bluetoothDevice;
- (CARBluetoothLEDevice)bluetoothLEDevice;
- (CARDiscoveredVehicle)init;
- (CRVehicleAccessory)accessory;
- (NSString)bluetoothAddress;
- (NSString)debugConnectionStatusDescription;
- (NSString)displayName;
- (id)description;
@end

@implementation CARDiscoveredVehicle

- (CARDiscoveredVehicle)init
{
  v6.receiver = self;
  v6.super_class = CARDiscoveredVehicle;
  v2 = [(CARDiscoveredVehicle *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    [(CARDiscoveredVehicle *)v2 setIdentifier:uUIDString];
  }

  return v2;
}

- (NSString)displayName
{
  accessory = [(CARDiscoveredVehicle *)self accessory];
  displayName = [accessory displayName];

  if (!displayName)
  {
    bluetoothDevice = [(CARDiscoveredVehicle *)self bluetoothDevice];

    if (!bluetoothDevice || (-[CARDiscoveredVehicle bluetoothDevice](self, "bluetoothDevice"), v7 = objc_claimAutoreleasedReturnValue(), [v7 name], displayName = objc_claimAutoreleasedReturnValue(), v7, !displayName))
    {
      bluetoothLEDevice = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

      if (!bluetoothLEDevice || (-[CARDiscoveredVehicle bluetoothLEDevice](self, "bluetoothLEDevice"), v9 = objc_claimAutoreleasedReturnValue(), [v9 name], displayName = objc_claimAutoreleasedReturnValue(), v9, !displayName))
      {
        displayName = &stru_6FD90;
      }
    }
  }

  return displayName;
}

- (NSString)debugConnectionStatusDescription
{
  accessory = [(CARDiscoveredVehicle *)self accessory];

  if (accessory)
  {
    v4 = @"DEBUG_ACCESSORY_CONNECTED";
    goto LABEL_3;
  }

  bluetoothDevice = [(CARDiscoveredVehicle *)self bluetoothDevice];

  if (bluetoothDevice)
  {
    bluetoothDevice2 = [(CARDiscoveredVehicle *)self bluetoothDevice];
    connectionStatus = [bluetoothDevice2 connectionStatus];

    if (connectionStatus == (&dword_0 + 2))
    {
      goto LABEL_14;
    }

    if (connectionStatus == &dword_4)
    {
LABEL_13:
      v4 = @"DEBUG_BLUETOOTH_CONNECTED";
      goto LABEL_3;
    }

    bluetoothDevice3 = [(CARDiscoveredVehicle *)self bluetoothDevice];
    isPaired = [bluetoothDevice3 isPaired];

    if (isPaired)
    {
      goto LABEL_16;
    }
  }

  bluetoothLEDevice = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

  if (!bluetoothLEDevice)
  {
    goto LABEL_17;
  }

  bluetoothLEDevice2 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  connectionStatus2 = [bluetoothLEDevice2 connectionStatus];

  if (connectionStatus2 == (&dword_0 + 2))
  {
LABEL_14:
    v4 = @"DEBUG_BLUETOOTH_CONNECTING";
    goto LABEL_3;
  }

  if (connectionStatus2 == &dword_4)
  {
    goto LABEL_13;
  }

  bluetoothLEDevice3 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  isPaired2 = [bluetoothLEDevice3 isPaired];

  if (isPaired2)
  {
LABEL_16:
    v4 = @"DEBUG_BLUETOOTH_PAIRED";
    goto LABEL_3;
  }

LABEL_17:
  v4 = @"DEBUG_NOT_CONNECTED";
LABEL_3:
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_6FD90 table:@"Localizable"];

  return v6;
}

- (BOOL)isConnecting
{
  bluetoothDevice = [(CARDiscoveredVehicle *)self bluetoothDevice];

  if (bluetoothDevice)
  {
    bluetoothDevice2 = [(CARDiscoveredVehicle *)self bluetoothDevice];
  }

  else
  {
    bluetoothLEDevice = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

    if (!bluetoothLEDevice)
    {
      return 0;
    }

    bluetoothDevice2 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  }

  v6 = bluetoothDevice2;
  connectionStatus = [bluetoothDevice2 connectionStatus];

  if (connectionStatus == (&dword_0 + 2))
  {
    return 1;
  }

  if (connectionStatus != &dword_4)
  {
    return 0;
  }

  accessory = [(CARDiscoveredVehicle *)self accessory];
  v9 = accessory == 0;

  return v9;
}

- (NSString)bluetoothAddress
{
  accessory = [(CARDiscoveredVehicle *)self accessory];
  bluetoothAddress = [accessory bluetoothAddress];

  if (!bluetoothAddress)
  {
    bluetoothDevice = [(CARDiscoveredVehicle *)self bluetoothDevice];
    bluetoothAddress = [bluetoothDevice bluetoothAddress];
  }

  return bluetoothAddress;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CARDiscoveredVehicle;
  v3 = [(CARDiscoveredVehicle *)&v7 description];
  identifier = [(CARDiscoveredVehicle *)self identifier];
  v5 = [NSString stringWithFormat:@"%@ (identifier: %@)", v3, identifier];

  return v5;
}

- (CRVehicleAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (CARBluetoothClassicDevice)bluetoothDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDevice);

  return WeakRetained;
}

- (CARBluetoothLEDevice)bluetoothLEDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothLEDevice);

  return WeakRetained;
}

@end