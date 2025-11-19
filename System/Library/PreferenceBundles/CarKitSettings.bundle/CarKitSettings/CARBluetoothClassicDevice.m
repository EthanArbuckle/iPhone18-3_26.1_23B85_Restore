@interface CARBluetoothClassicDevice
- (BOOL)isEqual:(id)a3;
- (BluetoothDevice)btDevice;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CARBluetoothClassicDevice

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CARBluetoothClassicDevice *)self bluetoothAddress];
    v6 = [v4 bluetoothAddress];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CARBluetoothClassicDevice *)self bluetoothAddress];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(CARBluetoothClassicDevice *)self bluetoothAddress];
    v7 = [v6 copyWithZone:a3];
    [v5 setBluetoothAddress:v7];

    [v5 setPaired:{-[CARBluetoothClassicDevice isPaired](self, "isPaired")}];
    [v5 setConnectionStatus:{-[CARBluetoothClassicDevice connectionStatus](self, "connectionStatus")}];
    v8 = [(CARBluetoothClassicDevice *)self btDevice];
    [v5 setBtDevice:v8];
  }

  return v5;
}

- (BluetoothDevice)btDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_btDevice);

  return WeakRetained;
}

@end