@interface AMSOptional
+ (id)optionalWithNil;
+ (id)optionalWithValue:(id)value;
- (AMSOptional)initWithValue:(id)value;
@end

@implementation AMSOptional

+ (id)optionalWithNil
{
  v2 = [[self alloc] initWithValue:0];

  return v2;
}

+ (id)optionalWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithValue:valueCopy];

  return v5;
}

- (AMSOptional)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = AMSOptional;
  v6 = [(AMSOptional *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

@end