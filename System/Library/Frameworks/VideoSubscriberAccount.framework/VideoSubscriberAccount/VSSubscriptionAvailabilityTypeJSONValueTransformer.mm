@interface VSSubscriptionAvailabilityTypeJSONValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSSubscriptionAvailabilityTypeJSONValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = [a3 integerValue];
  v4 = @"Account";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    return @"Subscription";
  }

  else
  {
    return v4;
  }
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"Account"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"Subscription"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4];

  return v5;
}

@end