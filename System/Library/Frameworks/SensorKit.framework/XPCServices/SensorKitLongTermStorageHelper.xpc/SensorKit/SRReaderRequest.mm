@interface SRReaderRequest
- (SRReaderRequest)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRReaderRequest

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [coder encodeObject:self->_sensor forKey:@"Sensor"];
  deviceIdentifier = self->_deviceIdentifier;

  [coder encodeObject:deviceIdentifier forKey:@"DeviceIdentifier"];
}

- (SRReaderRequest)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SRReaderRequest;
  v4 = [(SRReaderRequest *)&v6 init];
  if (v4)
  {
    v4->_deviceIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v4->_bundleIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    v4->_sensor = [coder decodeObjectOfClass:objc_opt_class() forKey:@"Sensor"];
  }

  return v4;
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