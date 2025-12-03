@interface CARBluetoothClassicDevice
- (BOOL)isEqual:(id)equal;
- (BluetoothDevice)btDevice;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CARBluetoothClassicDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bluetoothAddress = [(CARBluetoothClassicDevice *)self bluetoothAddress];
    bluetoothAddress2 = [equalCopy bluetoothAddress];
    v7 = [bluetoothAddress isEqual:bluetoothAddress2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  bluetoothAddress = [(CARBluetoothClassicDevice *)self bluetoothAddress];
  v3 = [bluetoothAddress hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    bluetoothAddress = [(CARBluetoothClassicDevice *)self bluetoothAddress];
    v7 = [bluetoothAddress copyWithZone:zone];
    [v5 setBluetoothAddress:v7];

    [v5 setPaired:{-[CARBluetoothClassicDevice isPaired](self, "isPaired")}];
    [v5 setConnectionStatus:{-[CARBluetoothClassicDevice connectionStatus](self, "connectionStatus")}];
    btDevice = [(CARBluetoothClassicDevice *)self btDevice];
    [v5 setBtDevice:btDevice];
  }

  return v5;
}

- (BluetoothDevice)btDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_btDevice);

  return WeakRetained;
}

@end