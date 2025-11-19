@interface _HKBooleanFilter
+ (_HKBooleanFilter)falseFilter;
+ (_HKBooleanFilter)trueFilter;
- (BOOL)isEqual:(id)a3;
- (_HKBooleanFilter)init;
- (_HKBooleanFilter)initWithCoder:(id)a3;
- (_HKBooleanFilter)initWithValue:(BOOL)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKBooleanFilter

- (_HKBooleanFilter)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HKBooleanFilter)initWithValue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _HKBooleanFilter;
  result = [(_HKBooleanFilter *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (_HKBooleanFilter)trueFilter
{
  v2 = [[_HKBooleanFilter alloc] initWithValue:1];

  return v2;
}

+ (_HKBooleanFilter)falseFilter
{
  v2 = [[_HKBooleanFilter alloc] initWithValue:0];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKStringFromBool(self->_value);
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == v4->_value;
  }

  return v5;
}

- (_HKBooleanFilter)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"value"];

  return [(_HKBooleanFilter *)self initWithValue:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKBooleanFilter;
  v4 = a3;
  [(_HKFilter *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
}

@end