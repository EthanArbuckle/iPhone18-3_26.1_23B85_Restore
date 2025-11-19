@interface HKUserDomainConceptBasicProperty
+ (id)nullPropertyWithType:(int64_t)a3 version:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (HKUserDomainConceptBasicProperty)init;
- (HKUserDomainConceptBasicProperty)initWithCoder:(id)a3;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 doubleValue:(double)a5;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 integerValue:(int64_t)a5;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 valueType:(int64_t)a6 value:(id)a7;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 value:(id)a5;
- (NSData)dataValue;
- (NSDate)dateValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (NSUUID)UUIDValue;
- (id)_valueDescription;
- (id)valueDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserDomainConceptBasicProperty

- (HKUserDomainConceptBasicProperty)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 valueType:(int64_t)a6 value:(id)a7
{
  v13 = a7;
  if ((HKIsValidUserDomainConceptPropertyValueType(a6, v13) & 1) == 0)
  {
    [HKUserDomainConceptBasicProperty initWithType:a6 version:v13 timestamp:a2 valueType:self value:?];
  }

  v18.receiver = self;
  v18.super_class = HKUserDomainConceptBasicProperty;
  v14 = [(HKUserDomainConceptProperty *)&v18 initWithType:a3 version:a4 timestamp:a6 == 0 deleted:a5];
  if (v14)
  {
    v15 = [v13 copyWithZone:0];
    value = v14->_value;
    v14->_value = v15;

    v14->_valueType = a6;
  }

  return v14;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 value:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 6;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = 7;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = 0;
          }

          else
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }
    }
  }

  v10 = [(HKUserDomainConceptBasicProperty *)self initWithType:a3 version:a4 timestamp:v9 valueType:v8 value:CFAbsoluteTimeGetCurrent()];

  return v10;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 integerValue:(int64_t)a5
{
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v11 = [(HKUserDomainConceptBasicProperty *)self initWithType:a3 version:a4 timestamp:3 valueType:v10 value:Current];

  return v11;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)a3 version:(int64_t)a4 doubleValue:(double)a5
{
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v11 = [(HKUserDomainConceptBasicProperty *)self initWithType:a3 version:a4 timestamp:2 valueType:v10 value:Current];

  return v11;
}

+ (id)nullPropertyWithType:(int64_t)a3 version:(int64_t)a4
{
  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 initWithType:a3 version:a4 value:v7];

  return v8;
}

- (id)valueDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = HKStringFromUserDomainConceptPropertyValueType(self->_valueType);
  v5 = [(HKUserDomainConceptBasicProperty *)self _valueDescription];
  v6 = [v3 stringWithFormat:@"'%@' %@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptBasicProperty;
  v3 = [(HKUserDomainConceptProperty *)&v5 hash];
  return [(NSCopying *)self->_value hash]^ v3 ^ self->_valueType;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v13.receiver = self;
      v13.super_class = HKUserDomainConceptBasicProperty;
      if ([(HKUserDomainConceptProperty *)&v13 isEqual:v5])
      {
        value = self->_value;
        v7 = [(HKUserDomainConceptBasicProperty *)v5 value];
        if (value == v7)
        {
          v11 = self->_valueType == v5->_valueType;
        }

        else
        {
          v8 = [(HKUserDomainConceptBasicProperty *)v5 value];
          if (v8)
          {
            v9 = self->_value;
            v10 = [(HKUserDomainConceptBasicProperty *)v5 value];
            if ([(NSCopying *)v9 isEqual:v10])
            {
              v11 = self->_valueType == v5->_valueType;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptBasicProperty;
  v4 = a3;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_valueType forKey:@"valueType"];
}

- (HKUserDomainConceptBasicProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKUserDomainConceptBasicProperty;
  v5 = [(HKUserDomainConceptProperty *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"value"];
    value = v5->_value;
    v5->_value = v13;

    v5->_valueType = [v4 decodeIntegerForKey:@"valueType"];
  }

  return v5;
}

- (NSString)stringValue
{
  v2 = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)numberValue
{
  v2 = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSDate)dateValue
{
  v2 = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSUUID)UUIDValue
{
  v2 = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSData)dataValue
{
  v2 = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_valueDescription
{
  v2 = 0;
  valueType = self->_valueType;
  if (valueType > 3)
  {
    if (valueType > 5)
    {
      if (valueType == 6)
      {
        v4 = [(HKUserDomainConceptBasicProperty *)self UUIDValue];
        v8 = [v4 UUIDString];
        goto LABEL_24;
      }

      if (valueType != 7)
      {
        goto LABEL_26;
      }

      v10 = MEMORY[0x1E696AEC0];
      v4 = [(HKUserDomainConceptBasicProperty *)self dataValue];
      [v10 stringWithFormat:@"(%lu bytes)", objc_msgSend(v4, "length")];
    }

    else if (valueType == 4)
    {
      v4 = [(HKUserDomainConceptBasicProperty *)self numberValue];
      HKStringFromBool([v4 BOOLValue]);
    }

    else
    {
      v4 = [(HKUserDomainConceptBasicProperty *)self dateValue];
      HKDiagnosticStringFromDate(v4);
    }

    goto LABEL_14;
  }

  if (valueType > 1)
  {
    v9 = MEMORY[0x1E696AEC0];
    if (valueType == 2)
    {
      v4 = [(HKUserDomainConceptBasicProperty *)self numberValue];
      [v4 doubleValue];
      [v9 stringWithFormat:@"%f", v11];
    }

    else
    {
      v4 = [(HKUserDomainConceptBasicProperty *)self numberValue];
      [v9 stringWithFormat:@"%lld", objc_msgSend(v4, "longLongValue")];
    }

    v8 = LABEL_14:;
    goto LABEL_24;
  }

  if (valueType)
  {
    if (valueType != 1)
    {
      goto LABEL_26;
    }

    v4 = [(HKUserDomainConceptBasicProperty *)self stringValue];
    v5 = [v4 length];
    if (v5 >= 0x50)
    {
      v6 = 80;
    }

    else
    {
      v6 = v5;
    }

    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%lu '", objc_msgSend(v4, "length")];
    v7 = [v4 substringToIndex:v6];
    [v2 appendString:v7];

    if (v6 < [v4 length])
    {
      [v2 appendString:@"..."];
    }

    [v2 appendString:@"'"];
    goto LABEL_25;
  }

  v4 = [(HKUserDomainConceptBasicProperty *)self value];
  v8 = [v4 description];
LABEL_24:
  v2 = v8;
LABEL_25:

LABEL_26:

  return v2;
}

- (void)initWithType:(uint64_t)a3 version:(uint64_t)a4 timestamp:valueType:value:.cold.1(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = HKStringFromUserDomainConceptPropertyValueType(a1);
  [v8 handleFailureInMethod:a3 object:a4 file:@"HKUserDomainConceptBasicProperty.m" lineNumber:37 description:{@"/'%@/' is not a valid type for class /'%@/'", v7, objc_opt_class()}];
}

@end