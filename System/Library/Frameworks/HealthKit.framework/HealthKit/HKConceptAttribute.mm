@interface HKConceptAttribute
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (HKConceptAttribute)init;
- (HKConceptAttribute)initWithCoder:(id)coder;
- (HKConceptAttribute)initWithType:(int64_t)type BOOLValue:(BOOL)value;
- (HKConceptAttribute)initWithType:(int64_t)type numberValue:(id)value;
- (HKConceptAttribute)initWithType:(int64_t)type value:(id)value version:(int64_t)version deleted:(BOOL)deleted;
- (NSNumber)numberValue;
- (int64_t)longLongValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKConceptAttribute

- (HKConceptAttribute)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKConceptAttribute)initWithType:(int64_t)type value:(id)value version:(int64_t)version deleted:(BOOL)deleted
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HKConceptAttribute;
  v11 = [(HKConceptAttribute *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v13 = [valueCopy copy];
    stringValue = v12->_stringValue;
    v12->_stringValue = v13;

    v12->_version = version;
    v12->_deleted = deleted;
  }

  return v12;
}

- (HKConceptAttribute)initWithType:(int64_t)type numberValue:(id)value
{
  stringValue = [value stringValue];
  v7 = [(HKConceptAttribute *)self initWithType:type stringValue:stringValue];

  return v7;
}

- (HKConceptAttribute)initWithType:(int64_t)type BOOLValue:(BOOL)value
{
  v4 = HKConceptAttributeValueTrue;
  if (!value)
  {
    v4 = HKConceptAttributeValueFalse;
  }

  return [(HKConceptAttribute *)self initWithType:type stringValue:*v4];
}

- (NSNumber)numberValue
{
  stringValue = [(HKConceptAttribute *)self stringValue];
  if (stringValue)
  {
    if (numberValue_onceToken != -1)
    {
      [HKConceptAttribute numberValue];
    }

    v3 = [numberValue_numberFormatter numberFromString:stringValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __33__HKConceptAttribute_numberValue__block_invoke()
{
  numberValue_numberFormatter = objc_alloc_init(MEMORY[0x1E696ADA0]);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)BOOLValue
{
  stringValue = [(HKConceptAttribute *)self stringValue];
  v3 = [stringValue isEqualToString:@"true"];

  return v3;
}

- (int64_t)longLongValue
{
  numberValue = [(HKConceptAttribute *)self numberValue];
  longLongValue = [numberValue longLongValue];

  return longLongValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_type != v5->_type)
      {
        goto LABEL_9;
      }

      stringValue = self->_stringValue;
      v7 = v5->_stringValue;
      if (stringValue == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSString *)stringValue isEqual:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (HKConceptAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKConceptAttribute;
  v5 = [(HKConceptAttribute *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v5->_version = [coderCopy decodeInt64ForKey:@"Version"];
    v5->_deleted = [coderCopy decodeBoolForKey:@"Deleted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeObject:self->_stringValue forKey:@"Value"];
  [coderCopy encodeInt64:self->_version forKey:@"Version"];
  [coderCopy encodeBool:self->_deleted forKey:@"Deleted"];
}

@end