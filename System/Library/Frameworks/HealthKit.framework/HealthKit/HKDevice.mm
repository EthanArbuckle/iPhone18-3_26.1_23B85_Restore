@interface HKDevice
+ (HKDevice)localDevice;
- (BOOL)_isAppleHardwareVersion;
- (BOOL)_isAppleManufacturer;
- (BOOL)_isAppleModel;
- (BOOL)_isConnectedGymDevice;
- (BOOL)isEqual:(id)equal;
- (HKDevice)init;
- (HKDevice)initWithCoder:(id)coder;
- (HKDevice)initWithName:(NSString *)name manufacturer:(NSString *)manufacturer model:(NSString *)model hardwareVersion:(NSString *)hardwareVersion firmwareVersion:(NSString *)firmwareVersion softwareVersion:(NSString *)softwareVersion localIdentifier:(NSString *)localIdentifier UDIDeviceIdentifier:(NSString *)UDIDeviceIdentifier;
- (NSString)_connectedGymDeviceFullName;
- (NSString)_connectedGymDeviceTypeName;
- (NSString)_displayName;
- (id)_init;
- (id)description;
- (unint64_t)_fitnessMachineType;
- (unint64_t)hash;
- (void)_setBluetoothIdentifier:(id)identifier;
- (void)_setCreationDate:(id)date;
- (void)_setFirmwareVersion:(id)version;
- (void)_setFitnessMachineType:(unint64_t)type;
- (void)_setHardwareVersion:(id)version;
- (void)_setLocalIdentifier:(id)identifier;
- (void)_setManufacturer:(id)manufacturer;
- (void)_setModel:(id)model;
- (void)_setName:(id)name;
- (void)_setSoftwareVersion:(id)version;
- (void)_setUDIDeviceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  name = self->_name;
  v6 = equalCopy[1];
  if (name != v6 && (!v6 || ![(NSString *)name isEqualToString:?]))
  {
    goto LABEL_29;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  v8 = equalCopy[2];
  if (bluetoothIdentifier != v8 && (!v8 || ![(NSString *)bluetoothIdentifier isEqualToString:?]))
  {
    goto LABEL_29;
  }

  manufacturer = self->_manufacturer;
  v10 = equalCopy[3];
  if (manufacturer != v10 && (!v10 || ![(NSString *)manufacturer isEqualToString:?]))
  {
    goto LABEL_29;
  }

  model = self->_model;
  v12 = equalCopy[4];
  if (model != v12 && (!v12 || ![(NSString *)model isEqualToString:?]))
  {
    goto LABEL_29;
  }

  hardwareVersion = self->_hardwareVersion;
  v14 = equalCopy[5];
  if (hardwareVersion != v14 && (!v14 || ![(NSString *)hardwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  firmwareVersion = self->_firmwareVersion;
  v16 = equalCopy[6];
  if (firmwareVersion != v16 && (!v16 || ![(NSString *)firmwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  softwareVersion = self->_softwareVersion;
  v18 = equalCopy[7];
  if (softwareVersion != v18 && (!v18 || ![(NSString *)softwareVersion isEqualToString:?]))
  {
    goto LABEL_29;
  }

  localIdentifier = self->_localIdentifier;
  v20 = equalCopy[8];
  if (localIdentifier != v20 && (!v20 || ![(NSString *)localIdentifier isEqualToString:?]))
  {
    goto LABEL_29;
  }

  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  v22 = equalCopy[9];
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
  manufacturer = [(HKDevice *)self manufacturer];
  v3 = +[_HKBehavior currentDeviceManufacturer];
  v4 = [manufacturer isEqualToString:v3];

  return v4;
}

- (BOOL)_isAppleModel
{
  model = [(HKDevice *)self model];
  if ([model hasPrefix:@"iPhone"])
  {
    v4 = 1;
  }

  else
  {
    model2 = [(HKDevice *)self model];
    if ([model2 hasPrefix:@"iPad"])
    {
      v4 = 1;
    }

    else
    {
      model3 = [(HKDevice *)self model];
      if ([model3 hasPrefix:@"Watch"])
      {
        v4 = 1;
      }

      else
      {
        model4 = [(HKDevice *)self model];
        v4 = [model4 hasPrefix:@"RealityDevice"];
      }
    }
  }

  return v4;
}

- (BOOL)_isAppleHardwareVersion
{
  hardwareVersion = [(HKDevice *)self hardwareVersion];
  if ([hardwareVersion hasPrefix:@"iPhone"])
  {
    v4 = 1;
  }

  else
  {
    hardwareVersion2 = [(HKDevice *)self hardwareVersion];
    if ([hardwareVersion2 hasPrefix:@"iPad"])
    {
      v4 = 1;
    }

    else
    {
      hardwareVersion3 = [(HKDevice *)self hardwareVersion];
      if ([hardwareVersion3 hasPrefix:@"Watch"])
      {
        v4 = 1;
      }

      else
      {
        hardwareVersion4 = [(HKDevice *)self hardwareVersion];
        v4 = [hardwareVersion4 hasPrefix:@"RealityDevice"];
      }
    }
  }

  return v4;
}

- (void)_setFitnessMachineType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E737A748[type - 1];
  }

  [(HKDevice *)self _setModel:v3];
}

- (unint64_t)_fitnessMachineType
{
  model = [(HKDevice *)self model];
  if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.treadmill"])
  {
    v3 = 1;
  }

  else if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.crosstrainer"])
  {
    v3 = 2;
  }

  else if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.stepclimber"])
  {
    v3 = 3;
  }

  else if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.stairclimber"])
  {
    v3 = 4;
  }

  else if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.indoorbike"])
  {
    v3 = 6;
  }

  else if ([model isEqualToString:@"com.apple.health.fitnessmachinemodel.rower"])
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
  localIdentifier = [(HKDevice *)self localIdentifier];
  v3 = [localIdentifier isEqualToString:@"com.healthd.fitnessmachine"];

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
    _connectedGymDeviceTypeName = [(HKDevice *)self _connectedGymDeviceTypeName];
    if (_connectedGymDeviceTypeName)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = HKHealthKitFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"CONNECTED_GYM_DEVICE_FORMAT" value:&stru_1F05FF230 table:@"Localizable"];
      manufacturer = [(HKDevice *)self manufacturer];
      manufacturer2 = [v5 stringWithFormat:v7, manufacturer, _connectedGymDeviceTypeName];
    }

    else
    {
      manufacturer2 = [(HKDevice *)self manufacturer];
    }
  }

  else
  {
    manufacturer2 = 0;
  }

  return manufacturer2;
}

- (NSString)_displayName
{
  if ([(HKDevice *)self _isConnectedGymDevice]&& ([(HKDevice *)self manufacturer], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    _connectedGymDeviceFullName = [(HKDevice *)self _connectedGymDeviceFullName];
    v5 = [_connectedGymDeviceFullName length];

    if (v5)
    {
      _connectedGymDeviceFullName2 = [(HKDevice *)self _connectedGymDeviceFullName];
      goto LABEL_10;
    }
  }

  else
  {
    name = [(HKDevice *)self name];
    v8 = [name length];

    if (v8)
    {
      _connectedGymDeviceFullName2 = [(HKDevice *)self name];
      goto LABEL_10;
    }

    model = [(HKDevice *)self model];
    v10 = [model length];

    if (v10)
    {
      _connectedGymDeviceFullName2 = [(HKDevice *)self model];
      goto LABEL_10;
    }
  }

  _connectedGymDeviceFullName2 = [(HKDevice *)self manufacturer];
LABEL_10:

  return _connectedGymDeviceFullName2;
}

- (void)_setName:(id)name
{
  hk_copyNonEmptyString = [name hk_copyNonEmptyString];
  name = self->_name;
  self->_name = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBluetoothIdentifier:(id)identifier
{
  hk_copyNonEmptyString = [identifier hk_copyNonEmptyString];
  bluetoothIdentifier = self->_bluetoothIdentifier;
  self->_bluetoothIdentifier = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setManufacturer:(id)manufacturer
{
  hk_copyNonEmptyString = [manufacturer hk_copyNonEmptyString];
  manufacturer = self->_manufacturer;
  self->_manufacturer = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setModel:(id)model
{
  hk_copyNonEmptyString = [model hk_copyNonEmptyString];
  model = self->_model;
  self->_model = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setHardwareVersion:(id)version
{
  hk_copyNonEmptyString = [version hk_copyNonEmptyString];
  hardwareVersion = self->_hardwareVersion;
  self->_hardwareVersion = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setFirmwareVersion:(id)version
{
  hk_copyNonEmptyString = [version hk_copyNonEmptyString];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSoftwareVersion:(id)version
{
  hk_copyNonEmptyString = [version hk_copyNonEmptyString];
  softwareVersion = self->_softwareVersion;
  self->_softwareVersion = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLocalIdentifier:(id)identifier
{
  hk_copyNonEmptyString = [identifier hk_copyNonEmptyString];
  localIdentifier = self->_localIdentifier;
  self->_localIdentifier = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setUDIDeviceIdentifier:(id)identifier
{
  hk_copyNonEmptyString = [identifier hk_copyNonEmptyString];
  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  self->_UDIDeviceIdentifier = hk_copyNonEmptyString;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCreationDate:(id)date
{
  v4 = [date copy];
  creationDate = self->_creationDate;
  self->_creationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  [coderCopy encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_hardwareVersion forKey:@"hardVers"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"firmVers"];
  [coderCopy encodeObject:self->_softwareVersion forKey:@"softVers"];
  [coderCopy encodeObject:self->_localIdentifier forKey:@"localID"];
  [coderCopy encodeObject:self->_UDIDeviceIdentifier forKey:@"FDAUDI"];
  [coderCopy encodeObject:self->_creationDate forKey:@"date"];
}

- (HKDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(HKDevice *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    hk_copyNonEmptyString = [v6 hk_copyNonEmptyString];
    name = _init->_name;
    _init->_name = hk_copyNonEmptyString;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothIdentifier"];
    hk_copyNonEmptyString2 = [v9 hk_copyNonEmptyString];
    bluetoothIdentifier = _init->_bluetoothIdentifier;
    _init->_bluetoothIdentifier = hk_copyNonEmptyString2;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    hk_copyNonEmptyString3 = [v12 hk_copyNonEmptyString];
    manufacturer = _init->_manufacturer;
    _init->_manufacturer = hk_copyNonEmptyString3;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    hk_copyNonEmptyString4 = [v15 hk_copyNonEmptyString];
    model = _init->_model;
    _init->_model = hk_copyNonEmptyString4;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardVers"];
    hk_copyNonEmptyString5 = [v18 hk_copyNonEmptyString];
    hardwareVersion = _init->_hardwareVersion;
    _init->_hardwareVersion = hk_copyNonEmptyString5;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmVers"];
    hk_copyNonEmptyString6 = [v21 hk_copyNonEmptyString];
    firmwareVersion = _init->_firmwareVersion;
    _init->_firmwareVersion = hk_copyNonEmptyString6;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"softVers"];
    hk_copyNonEmptyString7 = [v24 hk_copyNonEmptyString];
    softwareVersion = _init->_softwareVersion;
    _init->_softwareVersion = hk_copyNonEmptyString7;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localID"];
    hk_copyNonEmptyString8 = [v27 hk_copyNonEmptyString];
    localIdentifier = _init->_localIdentifier;
    _init->_localIdentifier = hk_copyNonEmptyString8;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FDAUDI"];
    hk_copyNonEmptyString9 = [v30 hk_copyNonEmptyString];
    UDIDeviceIdentifier = _init->_UDIDeviceIdentifier;
    _init->_UDIDeviceIdentifier = hk_copyNonEmptyString9;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    creationDate = _init->_creationDate;
    _init->_creationDate = v33;
  }

  return _init;
}

@end