@interface HKDevice
+ (HKDevice)localDevice;
- (BOOL)_isAppleHardwareVersion;
- (BOOL)_isAppleManufacturer;
- (BOOL)_isAppleModel;
- (BOOL)_isConnectedGymDevice;
- (BOOL)isEqual:(id)a3;
- (HKDevice)init;
- (HKDevice)initWithCoder:(id)a3;
- (HKDevice)initWithName:(NSString *)name manufacturer:(NSString *)manufacturer model:(NSString *)model hardwareVersion:(NSString *)hardwareVersion firmwareVersion:(NSString *)firmwareVersion softwareVersion:(NSString *)softwareVersion localIdentifier:(NSString *)localIdentifier UDIDeviceIdentifier:(NSString *)UDIDeviceIdentifier;
- (NSString)_connectedGymDeviceFullName;
- (NSString)_connectedGymDeviceTypeName;
- (NSString)_displayName;
- (id)_init;
- (id)description;
- (unint64_t)_fitnessMachineType;
- (unint64_t)hash;
- (void)_setBluetoothIdentifier:(id)a3;
- (void)_setCreationDate:(id)a3;
- (void)_setFirmwareVersion:(id)a3;
- (void)_setFitnessMachineType:(unint64_t)a3;
- (void)_setHardwareVersion:(id)a3;
- (void)_setLocalIdentifier:(id)a3;
- (void)_setManufacturer:(id)a3;
- (void)_setModel:(id)a3;
- (void)_setName:(id)a3;
- (void)_setSoftwareVersion:(id)a3;
- (void)_setUDIDeviceIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDevice

+ (HKDevice)localDevice
{
  if (localDevice_onceToken != -1)
  {
    +[HKDevice localDevice];
  }

  v3 = localDevice__localDevice;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = v3 ^ (2 * [(NSString *)self->_manufacturer hash]);
  v5 = v4 ^ (4 * [(NSString *)self->_model hash]);
  v6 = v5 ^ (8 * [(NSString *)self->_hardwareVersion hash]);
  v7 = v6 ^ (16 * [(NSString *)self->_firmwareVersion hash]);
  v8 = v7 ^ (32 * [(NSString *)self->_softwareVersion hash]);
  v9 = v8 ^ ([(NSString *)self->_localIdentifier hash]<< 6);
  v10 = v9 ^ ([(NSString *)self->_UDIDeviceIdentifier hash]<< 7);
  return v10 ^ ([(NSString *)self->_bluetoothIdentifier hash]<< 8);
}

void __23__HKDevice_localDevice__block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [HKDevice alloc];
  v1 = +[_HKBehavior currentDeviceName];
  v2 = +[_HKBehavior currentDeviceManufacturer];
  v3 = +[_HKBehavior currentDeviceClass];
  v4 = +[_HKBehavior currentDeviceProductType];
  v5 = +[_HKBehavior currentOSVersion];
  v6 = [(HKDevice *)v0 initWithName:v1 manufacturer:v2 model:v3 hardwareVersion:v4 firmwareVersion:0 softwareVersion:v5 localIdentifier:0 UDIDeviceIdentifier:0];
  v7 = localDevice__localDevice;
  localDevice__localDevice = v6;

  _HKInitializeLogging();
  v8 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = localDevice__localDevice;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Created localDevice: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (HKDevice)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKDevice;
  return [(HKDevice *)&v3 init];
}

- (HKDevice)initWithName:(NSString *)name manufacturer:(NSString *)manufacturer model:(NSString *)model hardwareVersion:(NSString *)hardwareVersion firmwareVersion:(NSString *)firmwareVersion softwareVersion:(NSString *)softwareVersion localIdentifier:(NSString *)localIdentifier UDIDeviceIdentifier:(NSString *)UDIDeviceIdentifier
{
  v16 = name;
  v17 = manufacturer;
  v18 = model;
  v19 = hardwareVersion;
  v20 = firmwareVersion;
  v21 = softwareVersion;
  v22 = localIdentifier;
  v23 = UDIDeviceIdentifier;
  v35.receiver = self;
  v35.super_class = HKDevice;
  v24 = [(HKDevice *)&v35 init];
  if (v24)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__HKDevice_initWithName_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier___block_invoke;
    aBlock[3] = &unk_1E737A728;
    aBlock[4] = &v31;
    v25 = _Block_copy(aBlock);
    v26 = v16;
    v27 = v25;
    v29 = v26;
    (*(v25 + 2))(v25, &v24->_name);
    (v27)[2](v27, &v24->_manufacturer, v17);
    (v27)[2](v27, &v24->_model, v18);
    (v27)[2](v27, &v24->_hardwareVersion, v19);
    (v27)[2](v27, &v24->_firmwareVersion, v20);
    (v27)[2](v27, &v24->_softwareVersion, v21);
    (v27)[2](v27, &v24->_localIdentifier, v22);
    (v27)[2](v27, &v24->_UDIDeviceIdentifier, v23);
    if (HKProgramSDKAtLeast() && (v32[3] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"At least one field of the device must be non-nil."];
    }

    _Block_object_dispose(&v31, 8);
    v16 = v29;
  }

  return v24;
}

void __128__HKDevice_initWithName_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier___block_invoke(uint64_t a1, void **a2, void *a3)
{
  v5 = [a3 hk_copyNonEmptyString];
  v6 = *a2;
  *a2 = v5;

  *(*(*(a1 + 32) + 8) + 24) |= *a2 != 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  name = self->_name;
  v6 = v4[1];
  if (name != v6 && (!v6 || ![(NSString *)name isEqualToString:?]))
  {
    goto LABEL_29;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  v8 = v4[2];
  if (bluetoothIdentifier != v8 && (!v8 || ![(NSString *)bluetoothIdentifier isEqualToString:?]))
  {
    goto LABEL_29;
  }

  manufacturer = self->_manufacturer;
  v10 = v4[3];
  if (manufacturer != v10 && (!v10 || ![(NSString *)manufacturer isEqualToString:?]))
  {
    goto LABEL_29;
  }

  model = self->_model;
  v12 = v4[4];
  if (model != v12 && (!v12 || ![(NSString *)model isEqualToString:?]))
  {
    goto LABEL_29;
  }

  hardwareVersion = self->_hardwareVersion;
  v14 = v4[5];
  if (hardwareVersion != v14 && (!v14 || ![(NSString *)hardwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  firmwareVersion = self->_firmwareVersion;
  v16 = v4[6];
  if (firmwareVersion != v16 && (!v16 || ![(NSString *)firmwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  softwareVersion = self->_softwareVersion;
  v18 = v4[7];
  if (softwareVersion != v18 && (!v18 || ![(NSString *)softwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  localIdentifier = self->_localIdentifier;
  v20 = v4[8];
  if (localIdentifier != v20 && (!v20 || ![(NSString *)localIdentifier isEqualToString:?]))
  {
    goto LABEL_29;
  }

  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  v22 = v4[9];
  if (UDIDeviceIdentifier == v22)
  {
    v23 = 1;
    goto LABEL_30;
  }

  if (v22)
  {
    v23 = [(NSString *)UDIDeviceIdentifier isEqualToString:?];
  }

  else
  {
LABEL_29:
    v23 = 0;
  }

LABEL_30:

  return v23;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = HKDevice;
  v4 = [(HKDevice *)&v7 description];
  v5 = [v3 initWithFormat:@"<%@", v4];

  if (self->_name)
  {
    [v5 appendFormat:@", name:%@", self->_name];
  }

  if (self->_bluetoothIdentifier)
  {
    [v5 appendFormat:@", bluetoothIdentifier:%@", self->_bluetoothIdentifier];
  }

  if (self->_manufacturer)
  {
    [v5 appendFormat:@", manufacturer:%@", self->_manufacturer];
  }

  if (self->_model)
  {
    [v5 appendFormat:@", model:%@", self->_model];
  }

  if (self->_hardwareVersion)
  {
    [v5 appendFormat:@", hardware:%@", self->_hardwareVersion];
  }

  if (self->_firmwareVersion)
  {
    [v5 appendFormat:@", firmware:%@", self->_firmwareVersion];
  }

  if (self->_softwareVersion)
  {
    [v5 appendFormat:@", software:%@", self->_softwareVersion];
  }

  if (self->_localIdentifier)
  {
    [v5 appendFormat:@", localIdentifier:%@", self->_localIdentifier];
  }

  if (self->_UDIDeviceIdentifier)
  {
    [v5 appendFormat:@", UDIDeviceIdentifier:%@", self->_UDIDeviceIdentifier];
  }

  if (self->_creationDate)
  {
    [v5 appendFormat:@", creation date:%@", self->_creationDate];
  }

  [v5 appendString:@">"];

  return v5;
}

- (BOOL)_isAppleManufacturer
{
  v2 = [(HKDevice *)self manufacturer];
  v3 = +[_HKBehavior currentDeviceManufacturer];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)_isAppleModel
{
  v3 = [(HKDevice *)self model];
  if ([v3 hasPrefix:@"iPhone"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HKDevice *)self model];
    if ([v5 hasPrefix:@"iPad"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(HKDevice *)self model];
      if ([v6 hasPrefix:@"Watch"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(HKDevice *)self model];
        v4 = [v7 hasPrefix:@"RealityDevice"];
      }
    }
  }

  return v4;
}

- (BOOL)_isAppleHardwareVersion
{
  v3 = [(HKDevice *)self hardwareVersion];
  if ([v3 hasPrefix:@"iPhone"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HKDevice *)self hardwareVersion];
    if ([v5 hasPrefix:@"iPad"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(HKDevice *)self hardwareVersion];
      if ([v6 hasPrefix:@"Watch"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(HKDevice *)self hardwareVersion];
        v4 = [v7 hasPrefix:@"RealityDevice"];
      }
    }
  }

  return v4;
}

- (void)_setFitnessMachineType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E737A748[a3 - 1];
  }

  [(HKDevice *)self _setModel:v3];
}

- (unint64_t)_fitnessMachineType
{
  v2 = [(HKDevice *)self model];
  if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.treadmill"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.crosstrainer"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.stepclimber"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.stairclimber"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.indoorbike"])
  {
    v3 = 6;
  }

  else if ([v2 isEqualToString:@"com.apple.health.fitnessmachinemodel.rower"])
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isConnectedGymDevice
{
  v2 = [(HKDevice *)self localIdentifier];
  v3 = [v2 isEqualToString:@"com.healthd.fitnessmachine"];

  return v3;
}

- (NSString)_connectedGymDeviceTypeName
{
  if ([(HKDevice *)self _isConnectedGymDevice]&& (v3 = [(HKDevice *)self _fitnessMachineType]- 1, v3 <= 5))
  {
    v4 = off_1E737A778[v3];
    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F05FF230 table:@"Localizable"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)_connectedGymDeviceFullName
{
  if ([(HKDevice *)self _isConnectedGymDevice]&& ([(HKDevice *)self manufacturer], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HKDevice *)self _connectedGymDeviceTypeName];
    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = HKHealthKitFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"CONNECTED_GYM_DEVICE_FORMAT" value:&stru_1F05FF230 table:@"Localizable"];
      v8 = [(HKDevice *)self manufacturer];
      v9 = [v5 stringWithFormat:v7, v8, v4];
    }

    else
    {
      v9 = [(HKDevice *)self manufacturer];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)_displayName
{
  if ([(HKDevice *)self _isConnectedGymDevice]&& ([(HKDevice *)self manufacturer], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HKDevice *)self _connectedGymDeviceFullName];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(HKDevice *)self _connectedGymDeviceFullName];
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [(HKDevice *)self name];
    v8 = [v7 length];

    if (v8)
    {
      v6 = [(HKDevice *)self name];
      goto LABEL_10;
    }

    v9 = [(HKDevice *)self model];
    v10 = [v9 length];

    if (v10)
    {
      v6 = [(HKDevice *)self model];
      goto LABEL_10;
    }
  }

  v6 = [(HKDevice *)self manufacturer];
LABEL_10:

  return v6;
}

- (void)_setName:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBluetoothIdentifier:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  bluetoothIdentifier = self->_bluetoothIdentifier;
  self->_bluetoothIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setManufacturer:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setModel:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setHardwareVersion:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  hardwareVersion = self->_hardwareVersion;
  self->_hardwareVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setFirmwareVersion:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSoftwareVersion:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  softwareVersion = self->_softwareVersion;
  self->_softwareVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLocalIdentifier:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  localIdentifier = self->_localIdentifier;
  self->_localIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setUDIDeviceIdentifier:(id)a3
{
  v4 = [a3 hk_copyNonEmptyString];
  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  self->_UDIDeviceIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCreationDate:(id)a3
{
  v4 = [a3 copy];
  creationDate = self->_creationDate;
  self->_creationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  [v5 encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeObject:self->_hardwareVersion forKey:@"hardVers"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"firmVers"];
  [v5 encodeObject:self->_softwareVersion forKey:@"softVers"];
  [v5 encodeObject:self->_localIdentifier forKey:@"localID"];
  [v5 encodeObject:self->_UDIDeviceIdentifier forKey:@"FDAUDI"];
  [v5 encodeObject:self->_creationDate forKey:@"date"];
}

- (HKDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKDevice *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = [v6 hk_copyNonEmptyString];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothIdentifier"];
    v10 = [v9 hk_copyNonEmptyString];
    bluetoothIdentifier = v5->_bluetoothIdentifier;
    v5->_bluetoothIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    v13 = [v12 hk_copyNonEmptyString];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    v16 = [v15 hk_copyNonEmptyString];
    model = v5->_model;
    v5->_model = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardVers"];
    v19 = [v18 hk_copyNonEmptyString];
    hardwareVersion = v5->_hardwareVersion;
    v5->_hardwareVersion = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmVers"];
    v22 = [v21 hk_copyNonEmptyString];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"softVers"];
    v25 = [v24 hk_copyNonEmptyString];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localID"];
    v28 = [v27 hk_copyNonEmptyString];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FDAUDI"];
    v31 = [v30 hk_copyNonEmptyString];
    UDIDeviceIdentifier = v5->_UDIDeviceIdentifier;
    v5->_UDIDeviceIdentifier = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v33;
  }

  return v5;
}

@end