@interface BKSHIDEventGenericGestureDescriptor
+ (id)descriptorForAnyGenericGestureType;
- (BKSHIDEventGenericGestureDescriptor)init;
- (BKSHIDEventGenericGestureDescriptor)initWithCoder:(id)coder;
- (BKSHIDEventGenericGestureDescriptor)initWithGenericGestureType:(unsigned int)type;
- (BOOL)describes:(id)describes;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventGenericGestureDescriptor

- (BKSHIDEventGenericGestureDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"genericGestureIsWildcardType"])
  {
    v5 = [(BKSHIDEventGenericGestureDescriptor *)self init];
  }

  else
  {
    v5 = -[BKSHIDEventGenericGestureDescriptor initWithGenericGestureType:](self, "initWithGenericGestureType:", [coderCopy decodeIntegerForKey:@"genericGestureType"]);
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (*(&self->super._hidEventType + 4) == 1)
  {
    [coder encodeBool:1 forKey:@"genericGestureIsWildcardType"];
  }

  else
  {
    [coder encodeInteger:*&self->_isWildcard forKey:@"genericGestureType"];
  }
}

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  v5 = describesCopy;
  v6 = *(&self->super._hidEventType + 4) == 1 && [describesCopy hidEventType] == 39 || -[BKSHIDEventGenericGestureDescriptor isEqual:](self, "isEqual:", v5);

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

- (BKSHIDEventGenericGestureDescriptor)initWithGenericGestureType:(unsigned int)type
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventGenericGestureDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 _initWithEventType:39];
  if (result)
  {
    *&result->_isWildcard = type;
  }

  return result;
}

+ (id)descriptorForAnyGenericGestureType
{
  v2 = objc_alloc_init(BKSHIDEventGenericGestureDescriptor);

  return v2;
}

@end