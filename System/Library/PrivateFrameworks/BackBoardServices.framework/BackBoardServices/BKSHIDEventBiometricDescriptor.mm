@interface BKSHIDEventBiometricDescriptor
- (BKSHIDEventBiometricDescriptor)init;
- (BKSHIDEventBiometricDescriptor)initWithBiometricEventType:(unsigned int)type;
- (BKSHIDEventBiometricDescriptor)initWithCoder:(id)coder;
- (BOOL)describes:(id)describes;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventBiometricDescriptor

- (BKSHIDEventBiometricDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"biometricEventType"];

  unsignedIntValue = [v5 unsignedIntValue];

  return [(BKSHIDEventBiometricDescriptor *)self initWithBiometricEventType:unsignedIntValue];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *&self->_isWildcard;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInt:v4];
  [coderCopy encodeObject:v6 forKey:@"biometricEventType"];
}

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  v5 = describesCopy;
  v6 = *(&self->super._hidEventType + 4) == 1 && [describesCopy hidEventType] == 29 || -[BKSHIDEventBiometricDescriptor isEqual:](self, "isEqual:", v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v10.receiver = self, v10.super_class = BKSHIDEventBiometricDescriptor, [(BKSHIDEventDescriptor *)&v10 isEqual:v6]))
  {
    biometricEventType = [v6 biometricEventType];
    v8 = biometricEventType == [(BKSHIDEventBiometricDescriptor *)self biometricEventType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BKSHIDEventBiometricDescriptor)initWithBiometricEventType:(unsigned int)type
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventBiometricDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 _initWithEventType:29];
  if (result)
  {
    *&result->_isWildcard = type;
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