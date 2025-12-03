@interface HKAttributeConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKAttributeConceptSelection)init;
- (HKAttributeConceptSelection)initWithAttribute:(int64_t)attribute operatorType:(unint64_t)type value:(id)value;
- (HKAttributeConceptSelection)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAttributeConceptSelection

- (HKAttributeConceptSelection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKAttributeConceptSelection)initWithAttribute:(int64_t)attribute operatorType:(unint64_t)type value:(id)value
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HKAttributeConceptSelection;
  v9 = [(HKConceptSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = attribute;
    v9->_operatorType = type;
    v11 = [valueCopy copyWithZone:0];
    value = v10->_value;
    v10->_value = v11;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = self->_type;
  v6 = HKStringFromPredicateOperatorType(self->_operatorType);
  v7 = [v3 stringWithFormat:@"<%@: %lld '%@' %@>", v4, type, v6, self->_value];

  return v7;
}

- (HKAttributeConceptSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"AttributeTypeKey"];
  v6 = [coderCopy decodeIntegerForKey:@"AttributeOperatorTypeKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AttributeValueKey"];

  if (v7)
  {
    self = [(HKAttributeConceptSelection *)self initWithAttribute:v5 operatorType:v6 value:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"AttributeTypeKey"];
  [coderCopy encodeInteger:self->_operatorType forKey:@"AttributeOperatorTypeKey"];
  [coderCopy encodeObject:self->_value forKey:@"AttributeValueKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = HKAttributeConceptSelection;
  if ([(HKConceptSelection *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    type = [(HKAttributeConceptSelection *)self type];
    if (type != [v5 type])
    {
      goto LABEL_12;
    }

    operatorType = [(HKAttributeConceptSelection *)self operatorType];
    if (operatorType != [v5 operatorType])
    {
      goto LABEL_12;
    }

    value = [(HKAttributeConceptSelection *)self value];
    value2 = [v5 value];
    v10 = value2;
    if (value == value2)
    {
    }

    else
    {
      value3 = [v5 value];
      if (!value3)
      {

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v12 = value3;
      value4 = [(HKAttributeConceptSelection *)self value];
      value5 = [v5 value];
      v15 = [value4 isEqual:value5];

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v16 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

@end