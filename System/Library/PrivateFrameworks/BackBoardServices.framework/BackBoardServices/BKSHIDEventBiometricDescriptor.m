@interface BKSHIDEventBiometricDescriptor
- (BKSHIDEventBiometricDescriptor)init;
- (BKSHIDEventBiometricDescriptor)initWithBiometricEventType:(unsigned int)a3;
- (BKSHIDEventBiometricDescriptor)initWithCoder:(id)a3;
- (BOOL)describes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventBiometricDescriptor

- (BKSHIDEventBiometricDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"biometricEventType"];

  v6 = [v5 unsignedIntValue];

  return [(BKSHIDEventBiometricDescriptor *)self initWithBiometricEventType:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *&self->_isWildcard;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInt:v4];
  [v5 encodeObject:v6 forKey:@"biometricEventType"];
}

- (BOOL)describes:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(&self->super._hidEventType + 4) == 1 && [v4 hidEventType] == 29 || -[BKSHIDEventBiometricDescriptor isEqual:](self, "isEqual:", v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v10.receiver = self, v10.super_class = BKSHIDEventBiometricDescriptor, [(BKSHIDEventDescriptor *)&v10 isEqual:v6]))
  {
    v7 = [v6 biometricEventType];
    v8 = v7 == [(BKSHIDEventBiometricDescriptor *)self biometricEventType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BKSHIDEventBiometricDescriptor)initWithBiometricEventType:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventBiometricDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 _initWithEventType:29];
  if (result)
  {
    *&result->_isWildcard = a3;
  }

  return result;
}

- (BKSHIDEventBiometricDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventBiometricDescriptor;
  result = [(BKSHIDEventDescriptor *)&v3 _initWithEventType:29];
  if (result)
  {
    *(&result->super._hidEventType + 4) = 1;
  }

  return result;
}

@end