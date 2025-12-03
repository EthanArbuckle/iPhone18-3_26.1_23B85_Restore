@interface CARBluetoothLEDevice
- (BOOL)isEqual:(id)equal;
- (CARBluetoothLEDevice)initWithPeripheral:(id)peripheral;
- (NSString)name;
- (NSUUID)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)connectionStatus;
- (unint64_t)hash;
@end

@implementation CARBluetoothLEDevice

- (CARBluetoothLEDevice)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v9.receiver = self;
  v9.super_class = CARBluetoothLEDevice;
  v6 = [(CARBluetoothLEDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, peripheral);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(CARBluetoothLEDevice *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(CARBluetoothLEDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    identifier = [(CARBluetoothLEDevice *)self identifier];
    v7 = [identifier copyWithZone:zone];
    [v5 setIdentifier:v7];

    [v5 setPaired:{-[CARBluetoothLEDevice isPaired](self, "isPaired")}];
    [v5 setConnectionStatus:{-[CARBluetoothLEDevice connectionStatus](self, "connectionStatus")}];
    peripheral = [(CARBluetoothLEDevice *)self peripheral];
    [v5 setPeripheral:peripheral];
  }

  return v5;
}

- (NSUUID)identifier
{
  peripheral = [(CARBluetoothLEDevice *)self peripheral];
  identifier = [peripheral identifier];

  return identifier;
}

- (NSString)name
{
  peripheral = [(CARBluetoothLEDevice *)self peripheral];
  name = [peripheral name];
  v4 = [name stringByAppendingString:@" (LE)"];

  return v4;
}

- (int64_t)connectionStatus
{
  peripheral = [(CARBluetoothLEDevice *)self peripheral];
  v3 = peripheral;
  if (peripheral && (v4 = [peripheral state], (v4 - 1) <= 2))
  {
    v5 = qword_52360[(v4 - 1)];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CARBluetoothLEDevice;
  v3 = [(CARBluetoothLEDevice *)&v10 description];
  identifier = [(CARBluetoothLEDevice *)self identifier];
  name = [(CARBluetoothLEDevice *)self name];
  connectionStatus = [(CARBluetoothLEDevice *)self connectionStatus];
  peripheral = [(CARBluetoothLEDevice *)self peripheral];
  v8 = [NSString stringWithFormat:@"%@ {identifier: %@ name: %@ connectionStatus: %ld peripheral: %@}", v3, identifier, name, connectionStatus, peripheral];

  return v8;
}

@end