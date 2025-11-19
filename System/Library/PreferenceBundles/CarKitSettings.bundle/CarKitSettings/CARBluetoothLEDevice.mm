@interface CARBluetoothLEDevice
- (BOOL)isEqual:(id)a3;
- (CARBluetoothLEDevice)initWithPeripheral:(id)a3;
- (NSString)name;
- (NSUUID)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)connectionStatus;
- (unint64_t)hash;
@end

@implementation CARBluetoothLEDevice

- (CARBluetoothLEDevice)initWithPeripheral:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CARBluetoothLEDevice;
  v6 = [(CARBluetoothLEDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CARBluetoothLEDevice *)self identifier];
    v6 = [v4 identifier];
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
  v2 = [(CARBluetoothLEDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(CARBluetoothLEDevice *)self identifier];
    v7 = [v6 copyWithZone:a3];
    [v5 setIdentifier:v7];

    [v5 setPaired:{-[CARBluetoothLEDevice isPaired](self, "isPaired")}];
    [v5 setConnectionStatus:{-[CARBluetoothLEDevice connectionStatus](self, "connectionStatus")}];
    v8 = [(CARBluetoothLEDevice *)self peripheral];
    [v5 setPeripheral:v8];
  }

  return v5;
}

- (NSUUID)identifier
{
  v2 = [(CARBluetoothLEDevice *)self peripheral];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)name
{
  v2 = [(CARBluetoothLEDevice *)self peripheral];
  v3 = [v2 name];
  v4 = [v3 stringByAppendingString:@" (LE)"];

  return v4;
}

- (int64_t)connectionStatus
{
  v2 = [(CARBluetoothLEDevice *)self peripheral];
  v3 = v2;
  if (v2 && (v4 = [v2 state], (v4 - 1) <= 2))
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
  v4 = [(CARBluetoothLEDevice *)self identifier];
  v5 = [(CARBluetoothLEDevice *)self name];
  v6 = [(CARBluetoothLEDevice *)self connectionStatus];
  v7 = [(CARBluetoothLEDevice *)self peripheral];
  v8 = [NSString stringWithFormat:@"%@ {identifier: %@ name: %@ connectionStatus: %ld peripheral: %@}", v3, v4, v5, v6, v7];

  return v8;
}

@end