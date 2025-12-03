@interface IMBoolValueConfigurationPredicate
+ (id)predicateWithValue:(BOOL)value;
- (IMBoolValueConfigurationPredicate)initWithValue:(BOOL)value;
@end

@implementation IMBoolValueConfigurationPredicate

+ (id)predicateWithValue:(BOOL)value
{
  v3 = [[IMBoolValueConfigurationPredicate alloc] initWithValue:value];

  return v3;
}

- (IMBoolValueConfigurationPredicate)initWithValue:(BOOL)value
{
  v7.receiver = self;
  v7.super_class = IMBoolValueConfigurationPredicate;
  v4 = [(IMConfigurationPredicate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = value;
    [(IMConfigurationPredicate *)v4 setScore:0];
  }

  return v5;
}

@end