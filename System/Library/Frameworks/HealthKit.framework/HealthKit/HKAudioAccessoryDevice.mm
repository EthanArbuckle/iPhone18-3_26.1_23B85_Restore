@interface HKAudioAccessoryDevice
- (BOOL)isEqual:(id)equal;
- (HKAudioAccessoryDevice)initWithAudioAccessoryDevice:(id)device;
- (HKAudioAccessoryDevice)initWithCoder:(id)coder;
- (id)_descriptionForHKAADState:(int64_t)state;
- (id)_initWithIdentifer:(id)identifer name:(id)name productName:(id)productName productID:(unsigned int)d model:(id)model writeStatus:(int64_t)status heartRateCapability:(int64_t)capability heartRateState:(int64_t)self0;
- (id)description;
- (int64_t)_forAAFeatureCapability:(unsigned __int8)capability;
- (int64_t)_forAAMultiState:(char)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAudioAccessoryDevice

- (id)_initWithIdentifer:(id)identifer name:(id)name productName:(id)productName productID:(unsigned int)d model:(id)model writeStatus:(int64_t)status heartRateCapability:(int64_t)capability heartRateState:(int64_t)self0
{
  identiferCopy = identifer;
  nameCopy = name;
  productNameCopy = productName;
  modelCopy = model;
  v30.receiver = self;
  v30.super_class = HKAudioAccessoryDevice;
  v20 = [(HKAudioAccessoryDevice *)&v30 init];
  if (v20)
  {
    v21 = [identiferCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [productNameCopy copy];
    productName = v20->_productName;
    v20->_productName = v25;

    v20->_productID = d;
    v27 = [modelCopy copy];
    model = v20->_model;
    v20->_model = v27;

    v20->_healthKitDataWriteAllowed = status;
    v20->_heartRateMonitorCapability = capability;
    v20->_heartRateMonitorEnabled = state;
  }

  return v20;
}

- (HKAudioAccessoryDevice)initWithAudioAccessoryDevice:(id)device
{
  deviceCopy = device;
  v5 = -[HKAudioAccessoryDevice _forAAFeatureCapability:](self, "_forAAFeatureCapability:", [deviceCopy heartRateMonitorCapability]);
  identifier = [deviceCopy identifier];
  name = [deviceCopy name];
  productName = [deviceCopy productName];
  productID = [deviceCopy productID];
  model = [deviceCopy model];
  v11 = -[HKAudioAccessoryDevice _forAAMultiState:](self, "_forAAMultiState:", [deviceCopy healthKitDataWriteAllowed]);
  heartRateMonitorEnabled = [deviceCopy heartRateMonitorEnabled];

  v13 = [(HKAudioAccessoryDevice *)self _initWithIdentifer:identifier name:name productName:productName productID:productID model:model writeStatus:v11 heartRateCapability:v5 heartRateState:[(HKAudioAccessoryDevice *)self _forAAMultiState:heartRateMonitorEnabled]];
  return v13;
}

- (int64_t)_forAAFeatureCapability:(unsigned __int8)capability
{
  if (capability == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (capability == 1);
  }
}

- (int64_t)_forAAMultiState:(char)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = equalCopy;
      LODWORD(identifier) = [(NSString *)identifier isEqual:v6];
      name = self->_name;
      v9 = v7->_name;

      v10 = identifier & [(NSString *)name isEqual:v9];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HKAudioAccessoryDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKAudioAccessoryDevice;
  v5 = [(HKAudioAccessoryDevice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceProductName"];
    productName = v5->_productName;
    v5->_productName = v10;

    v5->_productID = [coderCopy decodeInt32ForKey:@"HealthAADeviceProductID"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceModel"];
    model = v5->_model;
    v5->_model = v12;

    v5->_healthKitDataWriteAllowed = [coderCopy decodeInt64ForKey:@"HealthAADeviceWriteStatus"];
    v5->_heartRateMonitorCapability = [coderCopy decodeInt64ForKey:@"HealthAADeviceHeartRateCapability"];
    v5->_heartRateMonitorEnabled = [coderCopy decodeInt64ForKey:@"HealthAADeviceHeartRateState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"HealthAADeviceName"];
  [coderCopy encodeObject:self->_identifier forKey:@"HealthAADeviceIdentifier"];
  [coderCopy encodeObject:self->_productName forKey:@"HealthAADeviceProductName"];
  [coderCopy encodeInt:self->_productID forKey:@"HealthAADeviceProductID"];
  [coderCopy encodeObject:self->_model forKey:@"HealthAADeviceModel"];
  [coderCopy encodeInt64:self->_healthKitDataWriteAllowed forKey:@"HealthAADeviceWriteStatus"];
  [coderCopy encodeInt64:self->_heartRateMonitorCapability forKey:@"HealthAADeviceHeartRateCapability"];
  [coderCopy encodeInt64:self->_heartRateMonitorEnabled forKey:@"HealthAADeviceHeartRateState"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v14 = *&self->_name;
  productName = self->_productName;
  model = self->_model;
  productID = self->_productID;
  v9 = [(HKAudioAccessoryDevice *)self _descriptionForHKAADState:self->_healthKitDataWriteAllowed];
  v10 = [(HKAudioAccessoryDevice *)self _descriptionForHKAADState:self->_heartRateMonitorCapability];
  v11 = [(HKAudioAccessoryDevice *)self _descriptionForHKAADState:self->_heartRateMonitorEnabled];
  v12 = [v3 stringWithFormat:@"%@, (%@) identifier:%@, productName:%@, model:%@ productID:%u updateHealth:%@, HR Capability:%@, HRM Enabled:%@", v5, v14, productName, model, productID, v9, v10, v11];

  return v12;
}

- (id)_descriptionForHKAADState:(int64_t)state
{
  v3 = @"Unknown";
  if (state == 1)
  {
    v3 = @"Yes";
  }

  if (state == 2)
  {
    return @"No";
  }

  else
  {
    return v3;
  }
}

@end