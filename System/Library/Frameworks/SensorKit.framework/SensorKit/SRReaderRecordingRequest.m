@interface SRReaderRecordingRequest
- (NSString)description;
- (SRReaderRecordingRequest)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRReaderRecordingRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): sensor: %@, bundleId: %@, deviceId: %@, configuration: %@", NSStringFromClass(v4), self, self->_sensor, self->_bundleIdentifier, self->_deviceIdentifier, self->_sensorConfiguration];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [a3 encodeObject:self->_sensor forKey:@"Sensor"];
  [a3 encodeObject:self->_deviceIdentifier forKey:@"DeviceIdentifier"];
  sensorConfiguration = self->_sensorConfiguration;

  [a3 encodeObject:sensorConfiguration forKey:@"SensorConfiguration"];
}

- (SRReaderRecordingRequest)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v14.receiver = self;
  v14.super_class = SRReaderRecordingRequest;
  v6 = [(SRReaderRecordingRequest *)&v14 init];
  if (v6)
  {
    v6->_deviceIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v6->_bundleIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    v6->_sensor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Sensor"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v6->_sensorConfiguration = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, v12, objc_opt_class(), 0), @"SensorConfiguration"}];
  }

  return v6;
}

- (void)dealloc
{
  self->_deviceIdentifier = 0;

  self->_bundleIdentifier = 0;
  self->_sensorConfiguration = 0;

  self->_configurationDecodeError = 0;
  v3.receiver = self;
  v3.super_class = SRReaderRecordingRequest;
  [(SRReaderRecordingRequest *)&v3 dealloc];
}

@end