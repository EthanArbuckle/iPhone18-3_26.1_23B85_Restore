@interface HKAttributeConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKAttributeConceptSelection)init;
- (HKAttributeConceptSelection)initWithAttribute:(int64_t)a3 operatorType:(unint64_t)a4 value:(id)a5;
- (HKAttributeConceptSelection)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (HKAttributeConceptSelection)initWithAttribute:(int64_t)a3 operatorType:(unint64_t)a4 value:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = HKAttributeConceptSelection;
  v9 = [(HKConceptSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v9->_operatorType = a4;
    v11 = [v8 copyWithZone:0];
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

- (HKAttributeConceptSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"AttributeTypeKey"];
  v6 = [v4 decodeIntegerForKey:@"AttributeOperatorTypeKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AttributeValueKey"];

  if (v7)
  {
    self = [(HKAttributeConceptSelection *)self initWithAttribute:v5 operatorType:v6 value:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"AttributeTypeKey"];
  [v5 encodeInteger:self->_operatorType forKey:@"AttributeOperatorTypeKey"];
  [v5 encodeObject:self->_value forKey:@"AttributeValueKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKAttributeConceptSelection;
  if ([(HKConceptSelection *)&v18 isEqual:v4])
  {
    v5 = v4;
    v6 = [(HKAttributeConceptSelection *)self type];
    if (v6 != [v5 type])
    {
      goto LABEL_12;
    }

    v7 = [(HKAttributeConceptSelection *)self operatorType];
    if (v7 != [v5 operatorType])
    {
      goto LABEL_12;
    }

    v8 = [(HKAttributeConceptSelection *)self value];
    v9 = [v5 value];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [v5 value];
      if (!v11)
      {

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [(HKAttributeConceptSelection *)self value];
      v14 = [v5 value];
      v15 = [v13 isEqual:v14];

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