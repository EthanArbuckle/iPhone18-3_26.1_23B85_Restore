@interface _HKBooleanFilter
+ (_HKBooleanFilter)falseFilter;
+ (_HKBooleanFilter)trueFilter;
- (BOOL)isEqual:(id)equal;
- (_HKBooleanFilter)init;
- (_HKBooleanFilter)initWithCoder:(id)coder;
- (_HKBooleanFilter)initWithValue:(BOOL)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (_HKBooleanFilter)initWithValue:(BOOL)value
{
  v5.receiver = self;
  v5.super_class = _HKBooleanFilter;
  result = [(_HKBooleanFilter *)&v5 init];
  if (result)
  {
    result->_value = value;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy->_value;
  }

  return v5;
}

- (_HKBooleanFilter)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"value"];

  return [(_HKBooleanFilter *)self initWithValue:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKBooleanFilter;
  coderCopy = coder;
  [(_HKFilter *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
}

@end