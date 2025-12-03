@interface AccessoryPresenceInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializePredicates:(id)predicates;
@end

@implementation AccessoryPresenceInputs

- (BOOL)validateAndInitializePredicates:(id)predicates
{
  v8 = 0;
  predicatesCopy = predicates;
  v5 = [NSSet setWithObjects:@"USB", @"MiniJack", 0];
  v6 = [predicatesCopy dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v8];

  [(AccessoryPresenceInputs *)self setIdentifier:v6];
  return (v8 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v9 = 0;
  parametersCopy = parameters;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [parametersCopy dk_arrayFromKey:@"accessoryModelNumbers" types:v5 maxLength:100 defaultValue:&__NSArray0__struct failed:&v9];
  [(AccessoryPresenceInputs *)self setModelNumbers:v6];

  v7 = [parametersCopy dk_numberFromKey:@"timeOut" lowerBound:&off_100004250 upperBound:&off_100004268 defaultValue:&off_100004250 failed:&v9];

  -[AccessoryPresenceInputs setTimeout:](self, "setTimeout:", [v7 integerValue]);
  return (v9 & 1) == 0;
}

@end