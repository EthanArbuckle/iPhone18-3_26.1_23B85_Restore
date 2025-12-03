@interface BTMagicPairingSettings
+ (id)magicSettingsWithBluetoothAddress:(id)address;
- (BTMagicPairingSettings)initWithBluetoothAddress:(id)address;
- (BTMagicPairingSettings)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTMagicPairingSettings

+ (id)magicSettingsWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v4 = [[BTMagicPairingSettings alloc] initWithBluetoothAddress:addressCopy];

  return v4;
}

- (BTMagicPairingSettings)initWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v8.receiver = self;
  v8.super_class = BTMagicPairingSettings;
  v5 = [(BTMagicPairingSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTMagicPairingSettings *)v5 setBluetoothAddress:addressCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = [(BTMagicPairingSettings *)self bluetoothAddress];
  v6 = NSStringFromSelector(sel_bluetoothAddress);
  [coderCopy encodeObject:bluetoothAddress forKey:v6];

  name = [(BTMagicPairingSettings *)self name];
  v8 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v8];

  masterHint = [(BTMagicPairingSettings *)self masterHint];
  v10 = NSStringFromSelector(sel_masterHint);
  [coderCopy encodeObject:masterHint forKey:v10];

  masterKey = [(BTMagicPairingSettings *)self masterKey];
  v12 = NSStringFromSelector(sel_masterKey);
  [coderCopy encodeObject:masterKey forKey:v12];

  accessoryHint = [(BTMagicPairingSettings *)self accessoryHint];
  v14 = NSStringFromSelector(sel_accessoryHint);
  [coderCopy encodeObject:accessoryHint forKey:v14];

  accessoryKey = [(BTMagicPairingSettings *)self accessoryKey];
  v16 = NSStringFromSelector(sel_accessoryKey);
  [coderCopy encodeObject:accessoryKey forKey:v16];

  buttonModes = [(BTMagicPairingSettings *)self buttonModes];
  v18 = NSStringFromSelector(sel_buttonModes);
  [coderCopy encodeObject:buttonModes forKey:v18];

  color = [(BTMagicPairingSettings *)self color];
  v20 = NSStringFromSelector(sel_color);
  [coderCopy encodeObject:color forKey:v20];

  deviceIDFeatureBitsV1 = [(BTMagicPairingSettings *)self deviceIDFeatureBitsV1];
  v22 = NSStringFromSelector(sel_deviceIDFeatureBitsV1);
  [coderCopy encodeObject:deviceIDFeatureBitsV1 forKey:v22];

  deviceIDFeatureBitsV2 = [(BTMagicPairingSettings *)self deviceIDFeatureBitsV2];
  v24 = NSStringFromSelector(sel_deviceIDFeatureBitsV2);
  [coderCopy encodeObject:deviceIDFeatureBitsV2 forKey:v24];

  encryptionKey = [(BTMagicPairingSettings *)self encryptionKey];
  v26 = NSStringFromSelector(sel_encryptionKey);
  [coderCopy encodeObject:encryptionKey forKey:v26];

  v27 = [(BTMagicPairingSettings *)self irk];
  v28 = NSStringFromSelector("irk");
  [coderCopy encodeObject:v27 forKey:v28];

  listeningServices = [(BTMagicPairingSettings *)self listeningServices];
  v30 = NSStringFromSelector(sel_listeningServices);
  [coderCopy encodeObject:listeningServices forKey:v30];

  listeningServicesV2 = [(BTMagicPairingSettings *)self listeningServicesV2];
  v32 = NSStringFromSelector(sel_listeningServicesV2);
  [coderCopy encodeObject:listeningServicesV2 forKey:v32];

  optimizedBatteryCharging = [(BTMagicPairingSettings *)self optimizedBatteryCharging];
  v34 = NSStringFromSelector(sel_optimizedBatteryCharging);
  [coderCopy encodeObject:optimizedBatteryCharging forKey:v34];

  optimizedBatteryFullChargeDeadline = [(BTMagicPairingSettings *)self optimizedBatteryFullChargeDeadline];
  v36 = NSStringFromSelector(sel_optimizedBatteryFullChargeDeadline);
  [coderCopy encodeObject:optimizedBatteryFullChargeDeadline forKey:v36];

  ratchet = [(BTMagicPairingSettings *)self ratchet];
  v38 = NSStringFromSelector(sel_ratchet);
  [coderCopy encodeObject:ratchet forKey:v38];

  reserved = [(BTMagicPairingSettings *)self reserved];
  v40 = NSStringFromSelector(sel_reserved);
  [coderCopy encodeObject:reserved forKey:v40];

  settingsMask = [(BTMagicPairingSettings *)self settingsMask];
  v42 = NSStringFromSelector(sel_settingsMask);
  [coderCopy encodeObject:settingsMask forKey:v42];

  supportedServices = [(BTMagicPairingSettings *)self supportedServices];
  v44 = NSStringFromSelector(sel_supportedServices);
  [coderCopy encodeObject:supportedServices forKey:v44];

  version = [(BTMagicPairingSettings *)self version];
  v46 = NSStringFromSelector(sel_version);
  [coderCopy encodeObject:version forKey:v46];

  vendorID = [(BTMagicPairingSettings *)self vendorID];
  v48 = NSStringFromSelector(sel_vendorID);
  [coderCopy encodeObject:vendorID forKey:v48];

  productID = [(BTMagicPairingSettings *)self productID];
  v49 = NSStringFromSelector(sel_productID);
  [coderCopy encodeObject:productID forKey:v49];
}

- (BTMagicPairingSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v77.receiver = self;
  v77.super_class = BTMagicPairingSettings;
  v5 = [(BTMagicPairingSettings *)&v77 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bluetoothAddress);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    [(BTMagicPairingSettings *)v5 setBluetoothAddress:v8];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_name);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(BTMagicPairingSettings *)v5 setName:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_masterHint);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(BTMagicPairingSettings *)v5 setMasterHint:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_masterKey);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(BTMagicPairingSettings *)v5 setMasterKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_accessoryHint);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(BTMagicPairingSettings *)v5 setAccessoryHint:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_accessoryKey);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(BTMagicPairingSettings *)v5 setAccessoryKey:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_buttonModes);
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(BTMagicPairingSettings *)v5 setButtonModes:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_color);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(BTMagicPairingSettings *)v5 setColor:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_deviceIDFeatureBitsV1);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    [(BTMagicPairingSettings *)v5 setDeviceIDFeatureBitsV1:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_deviceIDFeatureBitsV2);
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    [(BTMagicPairingSettings *)v5 setDeviceIDFeatureBitsV2:v35];

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_encryptionKey);
    v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
    [(BTMagicPairingSettings *)v5 setEncryptionKey:v38];

    v39 = objc_opt_class();
    v40 = NSStringFromSelector("irk");
    v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];
    [(BTMagicPairingSettings *)v5 setIrk:v41];

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_listeningServices);
    v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];
    [(BTMagicPairingSettings *)v5 setListeningServices:v44];

    v45 = objc_opt_class();
    v46 = NSStringFromSelector(sel_listeningServicesV2);
    v47 = [coderCopy decodeObjectOfClass:v45 forKey:v46];
    [(BTMagicPairingSettings *)v5 setListeningServicesV2:v47];

    v48 = objc_opt_class();
    v49 = NSStringFromSelector(sel_optimizedBatteryCharging);
    v50 = [coderCopy decodeObjectOfClass:v48 forKey:v49];
    [(BTMagicPairingSettings *)v5 setOptimizedBatteryCharging:v50];

    v51 = objc_opt_class();
    v52 = NSStringFromSelector(sel_optimizedBatteryFullChargeDeadline);
    v53 = [coderCopy decodeObjectOfClass:v51 forKey:v52];
    [(BTMagicPairingSettings *)v5 setOptimizedBatteryFullChargeDeadline:v53];

    v54 = objc_opt_class();
    v55 = NSStringFromSelector(sel_ratchet);
    v56 = [coderCopy decodeObjectOfClass:v54 forKey:v55];
    [(BTMagicPairingSettings *)v5 setRatchet:v56];

    v57 = objc_opt_class();
    v58 = NSStringFromSelector(sel_reserved);
    v59 = [coderCopy decodeObjectOfClass:v57 forKey:v58];
    [(BTMagicPairingSettings *)v5 setReserved:v59];

    v60 = objc_opt_class();
    v61 = NSStringFromSelector(sel_settingsMask);
    v62 = [coderCopy decodeObjectOfClass:v60 forKey:v61];
    [(BTMagicPairingSettings *)v5 setSettingsMask:v62];

    v63 = objc_opt_class();
    v64 = NSStringFromSelector(sel_supportedServices);
    v65 = [coderCopy decodeObjectOfClass:v63 forKey:v64];
    [(BTMagicPairingSettings *)v5 setSupportedServices:v65];

    v66 = objc_opt_class();
    v67 = NSStringFromSelector(sel_version);
    v68 = [coderCopy decodeObjectOfClass:v66 forKey:v67];
    [(BTMagicPairingSettings *)v5 setVersion:v68];

    v69 = objc_opt_class();
    v70 = NSStringFromSelector(sel_vendorID);
    v71 = [coderCopy decodeObjectOfClass:v69 forKey:v70];
    [(BTMagicPairingSettings *)v5 setVendorID:v71];

    v72 = objc_opt_class();
    v73 = NSStringFromSelector(sel_productID);
    v74 = [coderCopy decodeObjectOfClass:v72 forKey:v73];
    [(BTMagicPairingSettings *)v5 setProductID:v74];

LABEL_4:
    v75 = v5;
    goto LABEL_9;
  }

  if (gLogCategory_BTCloudDevice <= 90 && (gLogCategory_BTCloudDevice != -1 || _LogCategory_Initialize()))
  {
    [BTMagicPairingSettings initWithCoder:];
  }

  v75 = 0;
LABEL_9:

  return v75;
}

- (id)description
{
  v3 = IsAppleInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  bluetoothAddress = [(BTMagicPairingSettings *)self bluetoothAddress];
  name = [(BTMagicPairingSettings *)self name];
  v7 = [name length];
  if (v3)
  {
    name2 = [(BTMagicPairingSettings *)self name];
    productID = [(BTMagicPairingSettings *)self productID];
    vendorID = [(BTMagicPairingSettings *)self vendorID];
    masterKey = [(BTMagicPairingSettings *)self masterKey];
    accessoryKey = [(BTMagicPairingSettings *)self accessoryKey];
    masterHint = [(BTMagicPairingSettings *)self masterHint];
    [(BTMagicPairingSettings *)self accessoryHint];
    v31 = v22 = v7;
    v30 = [(BTMagicPairingSettings *)self irk];
    encryptionKey = [(BTMagicPairingSettings *)self encryptionKey];
    version = [(BTMagicPairingSettings *)self version];
    color = [(BTMagicPairingSettings *)self color];
    ratchet = [(BTMagicPairingSettings *)self ratchet];
    [(BTMagicPairingSettings *)self buttonModes];
    v20 = v35 = bluetoothAddress;
    deviceIDFeatureBitsV1 = [(BTMagicPairingSettings *)self deviceIDFeatureBitsV1];
    [(BTMagicPairingSettings *)self deviceIDFeatureBitsV2];
    v8 = v26 = name;
    listeningServices = [(BTMagicPairingSettings *)self listeningServices];
    listeningServicesV2 = [(BTMagicPairingSettings *)self listeningServicesV2];
    settingsMask = [(BTMagicPairingSettings *)self settingsMask];
    supportedServices = [(BTMagicPairingSettings *)self supportedServices];
    optimizedBatteryCharging = [(BTMagicPairingSettings *)self optimizedBatteryCharging];
    optimizedBatteryFullChargeDeadline = [(BTMagicPairingSettings *)self optimizedBatteryFullChargeDeadline];
    vendorID2 = productID;
    productID2 = name2;
    v16 = [v4 stringWithFormat:@"BTMagicPairingSettings[%@]: Name(%lu): %@, PID: %@, VID: %@, MainKey: %@, AccKey: %@, MainHint: %@, AccHint: %@, IRK: %@, Enc: %@, V: %@, C: %@, R: %@, BM: %@, DID1: %@, DID2: %@, LS: %@, LSv2: %@, S: %@, SS: %@, OBC: %@-%@", v35, v22, name2, productID, vendorID, masterKey, accessoryKey, masterHint, v31, v30, encryptionKey, version, color, ratchet, v20, deviceIDFeatureBitsV1, v8, listeningServices, listeningServicesV2, settingsMask, supportedServices, optimizedBatteryCharging, optimizedBatteryFullChargeDeadline];

    name = v26;
    bluetoothAddress = v35;
  }

  else
  {
    productID2 = [(BTMagicPairingSettings *)self productID];
    vendorID2 = [(BTMagicPairingSettings *)self vendorID];
    v16 = [v4 stringWithFormat:@"BTMagicPairingSettings[%@]: Name(%lu), PID: %@, VID: %@", bluetoothAddress, v7, productID2, vendorID2];
  }

  return v16;
}

@end