@interface HKAllConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKAllConceptSelection)initWithCoder:(id)coder;
- (HKAllConceptSelection)initWithValue:(BOOL)value;
- (id)description;
@end

@implementation HKAllConceptSelection

- (HKAllConceptSelection)initWithValue:(BOOL)value
{
  v8.receiver = self;
  v8.super_class = HKAllConceptSelection;
  v4 = [(HKConceptSelection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = value;
    v6 = v4;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKStringFromBool(self->_value);
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (HKAllConceptSelection)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"ValueKey"];

  return [(HKAllConceptSelection *)self initWithValue:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = HKAllConceptSelection;
  if ([(HKConceptSelection *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    value = [(HKAllConceptSelection *)self value];
    value2 = [v5 value];

    v8 = value ^ value2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end