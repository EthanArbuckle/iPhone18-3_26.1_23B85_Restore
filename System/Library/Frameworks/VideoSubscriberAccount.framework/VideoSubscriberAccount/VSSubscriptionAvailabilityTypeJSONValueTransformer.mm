@interface VSSubscriptionAvailabilityTypeJSONValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSSubscriptionAvailabilityTypeJSONValueTransformer

- (id)transformedValue:(id)value
{
  integerValue = [value integerValue];
  v4 = @"Account";
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue == 2)
  {
    return @"Subscription";
  }

  else
  {
    return v4;
  }
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqual:@"Account"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqual:@"Subscription"])
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