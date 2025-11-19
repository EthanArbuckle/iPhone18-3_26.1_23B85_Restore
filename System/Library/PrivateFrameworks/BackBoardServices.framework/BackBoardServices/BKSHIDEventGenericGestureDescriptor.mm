@interface BKSHIDEventGenericGestureDescriptor
+ (id)descriptorForAnyGenericGestureType;
- (BKSHIDEventGenericGestureDescriptor)init;
- (BKSHIDEventGenericGestureDescriptor)initWithCoder:(id)a3;
- (BKSHIDEventGenericGestureDescriptor)initWithGenericGestureType:(unsigned int)a3;
- (BOOL)describes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventGenericGestureDescriptor

- (BKSHIDEventGenericGestureDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"genericGestureIsWildcardType"])
  {
    v5 = [(BKSHIDEventGenericGestureDescriptor *)self init];
  }

  else
  {
    v5 = -[BKSHIDEventGenericGestureDescriptor initWithGenericGestureType:](self, "initWithGenericGestureType:", [v4 decodeIntegerForKey:@"genericGestureType"]);
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (*(&self->super._hidEventType + 4) == 1)
  {
    [a3 encodeBool:1 forKey:@"genericGestureIsWildcardType"];
  }

  else
  {
    [a3 encodeInteger:*&self->_isWildcard forKey:@"genericGestureType"];
  }
}

- (BOOL)describes:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(&self->super._hidEventType + 4) == 1 && [v4 hidEventType] == 39 || -[BKSHIDEventGenericGestureDescriptor isEqual:](self, "isEqual:", v5);

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
  v7 = v6 && (v9.receiver = self, v9.super_class = BKSHIDEventGenericGestureDescriptor, [(BKSHIDEventDescriptor *)&v9 isEqual:v6]) && v6[4] == *&self->_isWildcard && *(v6 + 12) == *(&self->super._hidEventType + 4);

  return v7;
}

- (BKSHIDEventGenericGestureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventGenericGestureDescriptor;
  result = [(BKSHIDEventDescriptor *)&v3 _initWithEventType:39];
  if (result)
  {
    *(&result->super._hidEventType + 4) = 1;
  }

  return result;
}

- (BKSHIDEventGenericGestureDescriptor)initWithGenericGestureType:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventGenericGestureDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 _initWithEventType:39];
  if (result)
  {
    *&result->_isWildcard = a3;
  }

  return result;
}

+ (id)descriptorForAnyGenericGestureType
{
  v2 = objc_alloc_init(BKSHIDEventGenericGestureDescriptor);

  return v2;
}

@end