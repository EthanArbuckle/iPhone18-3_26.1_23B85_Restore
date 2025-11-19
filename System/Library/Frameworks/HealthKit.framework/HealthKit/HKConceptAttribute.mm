@interface HKConceptAttribute
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)a3;
- (HKConceptAttribute)init;
- (HKConceptAttribute)initWithCoder:(id)a3;
- (HKConceptAttribute)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4;
- (HKConceptAttribute)initWithType:(int64_t)a3 numberValue:(id)a4;
- (HKConceptAttribute)initWithType:(int64_t)a3 value:(id)a4 version:(int64_t)a5 deleted:(BOOL)a6;
- (NSNumber)numberValue;
- (int64_t)longLongValue;
- (void)encodeWithCoder:(id)a3;
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

- (HKConceptAttribute)initWithType:(int64_t)a3 value:(id)a4 version:(int64_t)a5 deleted:(BOOL)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HKConceptAttribute;
  v11 = [(HKConceptAttribute *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v13 = [v10 copy];
    stringValue = v12->_stringValue;
    v12->_stringValue = v13;

    v12->_version = a5;
    v12->_deleted = a6;
  }

  return v12;
}

- (HKConceptAttribute)initWithType:(int64_t)a3 numberValue:(id)a4
{
  v6 = [a4 stringValue];
  v7 = [(HKConceptAttribute *)self initWithType:a3 stringValue:v6];

  return v7;
}

- (HKConceptAttribute)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4
{
  v4 = HKConceptAttributeValueTrue;
  if (!a4)
  {
    v4 = HKConceptAttributeValueFalse;
  }

  return [(HKConceptAttribute *)self initWithType:a3 stringValue:*v4];
}

- (NSNumber)numberValue
{
  v2 = [(HKConceptAttribute *)self stringValue];
  if (v2)
  {
    if (numberValue_onceToken != -1)
    {
      [HKConceptAttribute numberValue];
    }

    v3 = [numberValue_numberFormatter numberFromString:v2];
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
  v2 = [(HKConceptAttribute *)self stringValue];
  v3 = [v2 isEqualToString:@"true"];

  return v3;
}

- (int64_t)longLongValue
{
  v2 = [(HKConceptAttribute *)self numberValue];
  v3 = [v2 longLongValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (HKConceptAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKConceptAttribute;
  v5 = [(HKConceptAttribute *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v5->_version = [v4 decodeInt64ForKey:@"Version"];
    v5->_deleted = [v4 decodeBoolForKey:@"Deleted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeObject:self->_stringValue forKey:@"Value"];
  [v5 encodeInt64:self->_version forKey:@"Version"];
  [v5 encodeBool:self->_deleted forKey:@"Deleted"];
}

@end