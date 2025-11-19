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
    v4 = [v3 UUIDString];
    [(CARDiscoveredVehicle *)v2 setIdentifier:v4];
  }

  return v2;
}

- (NSString)displayName
{
  v3 = [(CARDiscoveredVehicle *)self accessory];
  v4 = [v3 displayName];

  if (!v4)
  {
    v6 = [(CARDiscoveredVehicle *)self bluetoothDevice];

    if (!v6 || (-[CARDiscoveredVehicle bluetoothDevice](self, "bluetoothDevice"), v7 = objc_claimAutoreleasedReturnValue(), [v7 name], v4 = objc_claimAutoreleasedReturnValue(), v7, !v4))
    {
      v8 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

      if (!v8 || (-[CARDiscoveredVehicle bluetoothLEDevice](self, "bluetoothLEDevice"), v9 = objc_claimAutoreleasedReturnValue(), [v9 name], v4 = objc_claimAutoreleasedReturnValue(), v9, !v4))
      {
        v4 = &stru_6FD90;
      }
    }
  }

  return v4;
}

- (NSString)debugConnectionStatusDescription
{
  v3 = [(CARDiscoveredVehicle *)self accessory];

  if (v3)
  {
    v4 = @"DEBUG_ACCESSORY_CONNECTED";
    goto LABEL_3;
  }

  v8 = [(CARDiscoveredVehicle *)self bluetoothDevice];

  if (v8)
  {
    v9 = [(CARDiscoveredVehicle *)self bluetoothDevice];
    v10 = [v9 connectionStatus];

    if (v10 == (&dword_0 + 2))
    {
      goto LABEL_14;
    }

    if (v10 == &dword_4)
    {
LABEL_13:
      v4 = @"DEBUG_BLUETOOTH_CONNECTED";
      goto LABEL_3;
    }

    v11 = [(CARDiscoveredVehicle *)self bluetoothDevice];
    v12 = [v11 isPaired];

    if (v12)
    {
      goto LABEL_16;
    }
  }

  v13 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  v15 = [v14 connectionStatus];

  if (v15 == (&dword_0 + 2))
  {
LABEL_14:
    v4 = @"DEBUG_BLUETOOTH_CONNECTING";
    goto LABEL_3;
  }

  if (v15 == &dword_4)
  {
    goto LABEL_13;
  }

  v16 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  v17 = [v16 isPaired];

  if (v17)
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
  v3 = [(CARDiscoveredVehicle *)self bluetoothDevice];

  if (v3)
  {
    v4 = [(CARDiscoveredVehicle *)self bluetoothDevice];
  }

  else
  {
    v5 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];

    if (!v5)
    {
      return 0;
    }

    v4 = [(CARDiscoveredVehicle *)self bluetoothLEDevice];
  }

  v6 = v4;
  v7 = [v4 connectionStatus];

  if (v7 == (&dword_0 + 2))
  {
    return 1;
  }

  if (v7 != &dword_4)
  {
    return 0;
  }

  v8 = [(CARDiscoveredVehicle *)self accessory];
  v9 = v8 == 0;

  return v9;
}

- (NSString)bluetoothAddress
{
  v3 = [(CARDiscoveredVehicle *)self accessory];
  v4 = [v3 bluetoothAddress];

  if (!v4)
  {
    v5 = [(CARDiscoveredVehicle *)self bluetoothDevice];
    v4 = [v5 bluetoothAddress];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CARDiscoveredVehicle;
  v3 = [(CARDiscoveredVehicle *)&v7 description];
  v4 = [(CARDiscoveredVehicle *)self identifier];
  v5 = [NSString stringWithFormat:@"%@ (identifier: %@)", v3, v4];

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