@interface HKAllConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKAllConceptSelection)initWithCoder:(id)a3;
- (HKAllConceptSelection)initWithValue:(BOOL)a3;
- (id)description;
@end

@implementation HKAllConceptSelection

- (HKAllConceptSelection)initWithValue:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HKAllConceptSelection;
  v4 = [(HKConceptSelection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = a3;
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

- (HKAllConceptSelection)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"ValueKey"];

  return [(HKAllConceptSelection *)self initWithValue:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKAllConceptSelection;
  if ([(HKConceptSelection *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(HKAllConceptSelection *)self value];
    v7 = [v5 value];

    v8 = v6 ^ v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end