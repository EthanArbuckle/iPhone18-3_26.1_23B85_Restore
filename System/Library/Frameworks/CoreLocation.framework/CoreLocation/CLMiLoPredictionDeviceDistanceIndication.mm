@interface CLMiLoPredictionDeviceDistanceIndication
- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)a3;
- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)a3 uwbRange:(id)a4 bleRSSI:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoPredictionDeviceDistanceIndication

- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)a3 uwbRange:(id)a4 bleRSSI:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLMiLoPredictionDeviceDistanceIndication;
  v8 = [(CLMiLoPredictionDeviceDistanceIndication *)&v10 init];
  if (v8)
  {
    v8->_deviceIdentifier = [a3 copy];
    v8->_uwbRange = [a4 copy];
    v8->_bleRSSI = [a5 copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPredictionDeviceDistanceIndication;
  [(CLMiLoPredictionDeviceDistanceIndication *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  deviceIdentifier = self->_deviceIdentifier;
  uwbRange = self->_uwbRange;
  bleRSSI = self->_bleRSSI;

  return MEMORY[0x1EEE66B58](v4, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_);
}

- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI"];

  return MEMORY[0x1EEE66B58](self, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_deviceIdentifier forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier"];
  [a3 encodeObject:self->_uwbRange forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange"];
  bleRSSI = self->_bleRSSI;

  [a3 encodeObject:bleRSSI forKey:@"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI"];
}

@end