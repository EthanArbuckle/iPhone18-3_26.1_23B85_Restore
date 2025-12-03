@interface SRReaderRequest
- (NSString)description;
- (SRReaderRequest)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRReaderRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): sensor: %@, bundleId: %@, deviceId: %@", NSStringFromClass(v4), self, self->_sensor, self->_bundleIdentifier, self->_deviceIdentifier];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [coder encodeObject:self->_sensor forKey:@"Sensor"];
  deviceIdentifier = self->_deviceIdentifier;

  [coder encodeObject:deviceIdentifier forKey:@"DeviceIdentifier"];
}

- (SRReaderRequest)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v8.receiver = self;
  v8.super_class = SRReaderRequest;
  v6 = [(SRReaderRequest *)&v8 init];
  if (v6)
  {
    v6->_deviceIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v6->_bundleIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    v6->_sensor = [coder decodeObjectOfClass:objc_opt_class() forKey:@"Sensor"];
  }

  return v6;
}

- (void)dealloc
{
  self->_deviceIdentifier = 0;

  self->_bundleIdentifier = 0;
  v3.receiver = self;
  v3.super_class = SRReaderRequest;
  [(SRReaderRequest *)&v3 dealloc];
}

@end