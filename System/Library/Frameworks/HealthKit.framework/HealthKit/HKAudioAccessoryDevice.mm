@interface HKAudioAccessoryDevice
- (BOOL)isEqual:(id)a3;
- (HKAudioAccessoryDevice)initWithAudioAccessoryDevice:(id)a3;
- (HKAudioAccessoryDevice)initWithCoder:(id)a3;
- (id)_descriptionForHKAADState:(int64_t)a3;
- (id)_initWithIdentifer:(id)a3 name:(id)a4 productName:(id)a5 productID:(unsigned int)a6 model:(id)a7 writeStatus:(int64_t)a8 heartRateCapability:(int64_t)a9 heartRateState:(int64_t)a10;
- (id)description;
- (int64_t)_forAAFeatureCapability:(unsigned __int8)a3;
- (int64_t)_forAAMultiState:(char)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAudioAccessoryDevice

- (id)_initWithIdentifer:(id)a3 name:(id)a4 productName:(id)a5 productID:(unsigned int)a6 model:(id)a7 writeStatus:(int64_t)a8 heartRateCapability:(int64_t)a9 heartRateState:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v30.receiver = self;
  v30.super_class = HKAudioAccessoryDevice;
  v20 = [(HKAudioAccessoryDevice *)&v30 init];
  if (v20)
  {
    v21 = [v16 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v17 copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [v18 copy];
    productName = v20->_productName;
    v20->_productName = v25;

    v20->_productID = a6;
    v27 = [v19 copy];
    model = v20->_model;
    v20->_model = v27;

    v20->_healthKitDataWriteAllowed = a8;
    v20->_heartRateMonitorCapability = a9;
    v20->_heartRateMonitorEnabled = a10;
  }

  return v20;
}

- (HKAudioAccessoryDevice)initWithAudioAccessoryDevice:(id)a3
{
  v4 = a3;
  v5 = -[HKAudioAccessoryDevice _forAAFeatureCapability:](self, "_forAAFeatureCapability:", [v4 heartRateMonitorCapability]);
  v6 = [v4 identifier];
  v7 = [v4 name];
  v8 = [v4 productName];
  v9 = [v4 productID];
  v10 = [v4 model];
  v11 = -[HKAudioAccessoryDevice _forAAMultiState:](self, "_forAAMultiState:", [v4 healthKitDataWriteAllowed]);
  v12 = [v4 heartRateMonitorEnabled];

  v13 = [(HKAudioAccessoryDevice *)self _initWithIdentifer:v6 name:v7 productName:v8 productID:v9 model:v10 writeStatus:v11 heartRateCapability:v5 heartRateState:[(HKAudioAccessoryDevice *)self _forAAMultiState:v12]];
  return v13;
}

- (int64_t)_forAAFeatureCapability:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (int64_t)_forAAMultiState:(char)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
      v7 = v4;
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

- (HKAudioAccessoryDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKAudioAccessoryDevice;
  v5 = [(HKAudioAccessoryDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceProductName"];
    productName = v5->_productName;
    v5->_productName = v10;

    v5->_productID = [v4 decodeInt32ForKey:@"HealthAADeviceProductID"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthAADeviceModel"];
    model = v5->_model;
    v5->_model = v12;

    v5->_healthKitDataWriteAllowed = [v4 decodeInt64ForKey:@"HealthAADeviceWriteStatus"];
    v5->_heartRateMonitorCapability = [v4 decodeInt64ForKey:@"HealthAADeviceHeartRateCapability"];
    v5->_heartRateMonitorEnabled = [v4 decodeInt64ForKey:@"HealthAADeviceHeartRateState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"HealthAADeviceName"];
  [v5 encodeObject:self->_identifier forKey:@"HealthAADeviceIdentifier"];
  [v5 encodeObject:self->_productName forKey:@"HealthAADeviceProductName"];
  [v5 encodeInt:self->_productID forKey:@"HealthAADeviceProductID"];
  [v5 encodeObject:self->_model forKey:@"HealthAADeviceModel"];
  [v5 encodeInt64:self->_healthKitDataWriteAllowed forKey:@"HealthAADeviceWriteStatus"];
  [v5 encodeInt64:self->_heartRateMonitorCapability forKey:@"HealthAADeviceHeartRateCapability"];
  [v5 encodeInt64:self->_heartRateMonitorEnabled forKey:@"HealthAADeviceHeartRateState"];
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

- (id)_descriptionForHKAADState:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Yes";
  }

  if (a3 == 2)
  {
    return @"No";
  }

  else
  {
    return v3;
  }
}

@end