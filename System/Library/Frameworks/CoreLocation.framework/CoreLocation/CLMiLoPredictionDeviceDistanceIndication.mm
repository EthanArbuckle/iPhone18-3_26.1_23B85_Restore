@interface CLMiLoPredictionDeviceDistanceIndication
- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)coder;
- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)identifier uwbRange:(id)range bleRSSI:(id)i;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPredictionDeviceDistanceIndication

- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)identifier uwbRange:(id)range bleRSSI:(id)i
{
  v10.receiver = self;
  v10.super_class = CLMiLoPredictionDeviceDistanceIndication;
  v8 = [(CLMiLoPredictionDeviceDistanceIndication *)&v10 init];
  if (v8)
  {
    v8->_deviceIdentifier = [identifier copy];
    v8->_uwbRange = [range copy];
    v8->_bleRSSI = [i copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPredictionDeviceDistanceIndication;
  [(CLMiLoPredictionDeviceDistanceIndication *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceIdentifier = self->_deviceIdentifier;
  uwbRange = self->_uwbRange;
  bleRSSI = self->_bleRSSI;

  return MEMORY[0x1EEE66B58](v4, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_);
}

- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI"];

  return MEMORY[0x1EEE66B58](self, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_deviceIdentifier forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier"];
  [coder encodeObject:self->_uwbRange forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange"];
  bleRSSI = self->_bleRSSI;

  [coder encodeObject:bleRSSI forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI"];
}

@end