@interface BTCloudDeviceSupportInformation
+ (id)deviceSupportInformationWithBluetoothAddress:(id)address;
- (BTCloudDeviceSupportInformation)initWithBluetoothAddress:(id)address;
- (BTCloudDeviceSupportInformation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTCloudDeviceSupportInformation

+ (id)deviceSupportInformationWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v4 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:addressCopy];

  return v4;
}

- (BTCloudDeviceSupportInformation)initWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v8.receiver = self;
  v8.super_class = BTCloudDeviceSupportInformation;
  v5 = [(BTCloudDeviceSupportInformation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudDeviceSupportInformation *)v5 setBluetoothAddress:addressCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = [(BTCloudDeviceSupportInformation *)self bluetoothAddress];
  v6 = NSStringFromSelector(sel_bluetoothAddress);
  [coderCopy encodeObject:bluetoothAddress forKey:v6];

  ancAssetVersion = [(BTCloudDeviceSupportInformation *)self ancAssetVersion];
  v8 = NSStringFromSelector(sel_ancAssetVersion);
  [coderCopy encodeObject:ancAssetVersion forKey:v8];

  budsFirmwareVersion = [(BTCloudDeviceSupportInformation *)self budsFirmwareVersion];
  v10 = NSStringFromSelector(sel_budsFirmwareVersion);
  [coderCopy encodeObject:budsFirmwareVersion forKey:v10];

  caseName = [(BTCloudDeviceSupportInformation *)self caseName];
  v12 = NSStringFromSelector(sel_caseName);
  [coderCopy encodeObject:caseName forKey:v12];

  caseFirmwareVersion = [(BTCloudDeviceSupportInformation *)self caseFirmwareVersion];
  v14 = NSStringFromSelector(sel_caseFirmwareVersion);
  [coderCopy encodeObject:caseFirmwareVersion forKey:v14];

  caseSerialNumber = [(BTCloudDeviceSupportInformation *)self caseSerialNumber];
  v16 = NSStringFromSelector(sel_caseSerialNumber);
  [coderCopy encodeObject:caseSerialNumber forKey:v16];

  hardwareVersion = [(BTCloudDeviceSupportInformation *)self hardwareVersion];
  v18 = NSStringFromSelector(sel_hardwareVersion);
  [coderCopy encodeObject:hardwareVersion forKey:v18];

  leftBudSerialNumber = [(BTCloudDeviceSupportInformation *)self leftBudSerialNumber];
  v20 = NSStringFromSelector(sel_leftBudSerialNumber);
  [coderCopy encodeObject:leftBudSerialNumber forKey:v20];

  rightBudSerialNumber = [(BTCloudDeviceSupportInformation *)self rightBudSerialNumber];
  v21 = NSStringFromSelector(sel_rightBudSerialNumber);
  [coderCopy encodeObject:rightBudSerialNumber forKey:v21];
}

- (BTCloudDeviceSupportInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = BTCloudDeviceSupportInformation;
  v5 = [(BTCloudDeviceSupportInformation *)&v35 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bluetoothAddress);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    [(BTCloudDeviceSupportInformation *)v5 setBluetoothAddress:v8];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_ancAssetVersion);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudDeviceSupportInformation *)v5 setAncAssetVersion:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_budsFirmwareVersion);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(BTCloudDeviceSupportInformation *)v5 setBudsFirmwareVersion:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_caseName);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(BTCloudDeviceSupportInformation *)v5 setCaseName:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_caseFirmwareVersion);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(BTCloudDeviceSupportInformation *)v5 setCaseFirmwareVersion:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_caseSerialNumber);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(BTCloudDeviceSupportInformation *)v5 setCaseSerialNumber:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_hardwareVersion);
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(BTCloudDeviceSupportInformation *)v5 setHardwareVersion:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_leftBudSerialNumber);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(BTCloudDeviceSupportInformation *)v5 setLeftBudSerialNumber:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_rightBudSerialNumber);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    [(BTCloudDeviceSupportInformation *)v5 setRightBudSerialNumber:v32];

LABEL_4:
    v33 = v5;
    goto LABEL_9;
  }

  if (gLogCategory_BTCloudDevice <= 90 && (gLogCategory_BTCloudDevice != -1 || _LogCategory_Initialize()))
  {
    [BTCloudDeviceSupportInformation initWithCoder:];
  }

  v33 = 0;
LABEL_9:

  return v33;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bluetoothAddress = [(BTCloudDeviceSupportInformation *)self bluetoothAddress];
  budsFirmwareVersion = [(BTCloudDeviceSupportInformation *)self budsFirmwareVersion];
  caseFirmwareVersion = [(BTCloudDeviceSupportInformation *)self caseFirmwareVersion];
  caseSerialNumber = [(BTCloudDeviceSupportInformation *)self caseSerialNumber];
  hardwareVersion = [(BTCloudDeviceSupportInformation *)self hardwareVersion];
  leftBudSerialNumber = [(BTCloudDeviceSupportInformation *)self leftBudSerialNumber];
  rightBudSerialNumber = [(BTCloudDeviceSupportInformation *)self rightBudSerialNumber];
  caseName = [(BTCloudDeviceSupportInformation *)self caseName];
  ancAssetVersion = [(BTCloudDeviceSupportInformation *)self ancAssetVersion];
  v13 = [v3 stringWithFormat:@"BTCloudDeviceInformation: %@, %@, %@, %@, %@, %@, %@, %@, %@", bluetoothAddress, budsFirmwareVersion, caseFirmwareVersion, caseSerialNumber, hardwareVersion, leftBudSerialNumber, rightBudSerialNumber, caseName, ancAssetVersion];

  return v13;
}

@end