@interface AccessoryPresenceInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializePredicates:(id)a3;
@end

@implementation AccessoryPresenceInputs

- (BOOL)validateAndInitializePredicates:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [NSSet setWithObjects:@"USB", @"MiniJack", 0];
  v6 = [v4 dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v8];

  [(AccessoryPresenceInputs *)self setIdentifier:v6];
  return (v8 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v9 = 0;
  v4 = a3;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [v4 dk_arrayFromKey:@"accessoryModelNumbers" types:v5 maxLength:100 defaultValue:&__NSArray0__struct failed:&v9];
  [(AccessoryPresenceInputs *)self setModelNumbers:v6];

  v7 = [v4 dk_numberFromKey:@"timeOut" lowerBound:&off_100004250 upperBound:&off_100004268 defaultValue:&off_100004250 failed:&v9];

  -[AccessoryPresenceInputs setTimeout:](self, "setTimeout:", [v7 integerValue]);
  return (v9 & 1) == 0;
}

@end