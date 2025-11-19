@interface AMSOptional
+ (id)optionalWithNil;
+ (id)optionalWithValue:(id)a3;
- (AMSOptional)initWithValue:(id)a3;
@end

@implementation AMSOptional

+ (id)optionalWithNil
{
  v2 = [[a1 alloc] initWithValue:0];

  return v2;
}

+ (id)optionalWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:v4];

  return v5;
}

- (AMSOptional)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSOptional;
  v6 = [(AMSOptional *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

@end