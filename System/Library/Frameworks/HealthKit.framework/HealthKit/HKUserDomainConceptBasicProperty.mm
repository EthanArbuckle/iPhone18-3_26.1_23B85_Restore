@interface HKUserDomainConceptBasicProperty
+ (id)nullPropertyWithType:(int64_t)type version:(int64_t)version;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptBasicProperty)init;
- (HKUserDomainConceptBasicProperty)initWithCoder:(id)coder;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version doubleValue:(double)value;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version integerValue:(int64_t)value;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp valueType:(int64_t)valueType value:(id)value;
- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version value:(id)value;
- (NSData)dataValue;
- (NSDate)dateValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (NSUUID)UUIDValue;
- (id)_valueDescription;
- (id)valueDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp valueType:(int64_t)valueType value:(id)value
{
  valueCopy = value;
  if ((HKIsValidUserDomainConceptPropertyValueType(valueType, valueCopy) & 1) == 0)
  {
    [HKUserDomainConceptBasicProperty initWithType:valueType version:valueCopy timestamp:a2 valueType:self value:?];
  }

  v18.receiver = self;
  v18.super_class = HKUserDomainConceptBasicProperty;
  v14 = [(HKUserDomainConceptProperty *)&v18 initWithType:type version:version timestamp:valueType == 0 deleted:timestamp];
  if (v14)
  {
    v15 = [valueCopy copyWithZone:0];
    value = v14->_value;
    v14->_value = v15;

    v14->_valueType = valueType;
  }

  return v14;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version value:(id)value
{
  valueCopy = value;
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

  v10 = [(HKUserDomainConceptBasicProperty *)self initWithType:type version:version timestamp:v9 valueType:valueCopy value:CFAbsoluteTimeGetCurrent()];

  return v10;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version integerValue:(int64_t)value
{
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v11 = [(HKUserDomainConceptBasicProperty *)self initWithType:type version:version timestamp:3 valueType:v10 value:Current];

  return v11;
}

- (HKUserDomainConceptBasicProperty)initWithType:(int64_t)type version:(int64_t)version doubleValue:(double)value
{
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v11 = [(HKUserDomainConceptBasicProperty *)self initWithType:type version:version timestamp:2 valueType:v10 value:Current];

  return v11;
}

+ (id)nullPropertyWithType:(int64_t)type version:(int64_t)version
{
  v6 = [self alloc];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 initWithType:type version:version value:null];

  return v8;
}

- (id)valueDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = HKStringFromUserDomainConceptPropertyValueType(self->_valueType);
  _valueDescription = [(HKUserDomainConceptBasicProperty *)self _valueDescription];
  v6 = [v3 stringWithFormat:@"'%@' %@", v4, _valueDescription];

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptBasicProperty;
  v3 = [(HKUserDomainConceptProperty *)&v5 hash];
  return [(NSCopying *)self->_value hash]^ v3 ^ self->_valueType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v13.receiver = self;
      v13.super_class = HKUserDomainConceptBasicProperty;
      if ([(HKUserDomainConceptProperty *)&v13 isEqual:v5])
      {
        value = self->_value;
        value = [(HKUserDomainConceptBasicProperty *)v5 value];
        if (value == value)
        {
          v11 = self->_valueType == v5->_valueType;
        }

        else
        {
          value2 = [(HKUserDomainConceptBasicProperty *)v5 value];
          if (value2)
          {
            v9 = self->_value;
            value3 = [(HKUserDomainConceptBasicProperty *)v5 value];
            if ([(NSCopying *)v9 isEqual:value3])
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptBasicProperty;
  coderCopy = coder;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_valueType forKey:@"valueType"];
}

- (HKUserDomainConceptBasicProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKUserDomainConceptBasicProperty;
  v5 = [(HKUserDomainConceptProperty *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"value"];
    value = v5->_value;
    v5->_value = v13;

    v5->_valueType = [coderCopy decodeIntegerForKey:@"valueType"];
  }

  return v5;
}

- (NSString)stringValue
{
  value = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = value;
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
  value = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = value;
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
  value = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = value;
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
  value = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = value;
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
  value = [(HKUserDomainConceptBasicProperty *)self value];
  objc_opt_class();
  v3 = value;
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
        uUIDValue = [(HKUserDomainConceptBasicProperty *)self UUIDValue];
        uUIDString = [uUIDValue UUIDString];
        goto LABEL_24;
      }

      if (valueType != 7)
      {
        goto LABEL_26;
      }

      v10 = MEMORY[0x1E696AEC0];
      uUIDValue = [(HKUserDomainConceptBasicProperty *)self dataValue];
      [v10 stringWithFormat:@"(%lu bytes)", objc_msgSend(uUIDValue, "length")];
    }

    else if (valueType == 4)
    {
      uUIDValue = [(HKUserDomainConceptBasicProperty *)self numberValue];
      HKStringFromBool([uUIDValue BOOLValue]);
    }

    else
    {
      uUIDValue = [(HKUserDomainConceptBasicProperty *)self dateValue];
      HKDiagnosticStringFromDate(uUIDValue);
    }

    goto LABEL_14;
  }

  if (valueType > 1)
  {
    v9 = MEMORY[0x1E696AEC0];
    if (valueType == 2)
    {
      uUIDValue = [(HKUserDomainConceptBasicProperty *)self numberValue];
      [uUIDValue doubleValue];
      [v9 stringWithFormat:@"%f", v11];
    }

    else
    {
      uUIDValue = [(HKUserDomainConceptBasicProperty *)self numberValue];
      [v9 stringWithFormat:@"%lld", objc_msgSend(uUIDValue, "longLongValue")];
    }

    uUIDString = LABEL_14:;
    goto LABEL_24;
  }

  if (valueType)
  {
    if (valueType != 1)
    {
      goto LABEL_26;
    }

    uUIDValue = [(HKUserDomainConceptBasicProperty *)self stringValue];
    v5 = [uUIDValue length];
    if (v5 >= 0x50)
    {
      v6 = 80;
    }

    else
    {
      v6 = v5;
    }

    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%lu '", objc_msgSend(uUIDValue, "length")];
    v7 = [uUIDValue substringToIndex:v6];
    [v2 appendString:v7];

    if (v6 < [uUIDValue length])
    {
      [v2 appendString:@"..."];
    }

    [v2 appendString:@"'"];
    goto LABEL_25;
  }

  uUIDValue = [(HKUserDomainConceptBasicProperty *)self value];
  uUIDString = [uUIDValue description];
LABEL_24:
  v2 = uUIDString;
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