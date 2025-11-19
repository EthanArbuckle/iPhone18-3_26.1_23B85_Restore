@interface IMBoolValueConfigurationPredicate
+ (id)predicateWithValue:(BOOL)a3;
- (IMBoolValueConfigurationPredicate)initWithValue:(BOOL)a3;
@end

@implementation IMBoolValueConfigurationPredicate

+ (id)predicateWithValue:(BOOL)a3
{
  v3 = [[IMBoolValueConfigurationPredicate alloc] initWithValue:a3];

  return v3;
}

- (IMBoolValueConfigurationPredicate)initWithValue:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = IMBoolValueConfigurationPredicate;
  v4 = [(IMConfigurationPredicate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = a3;
    [(IMConfigurationPredicate *)v4 setScore:0];
  }

  return v5;
}

@end