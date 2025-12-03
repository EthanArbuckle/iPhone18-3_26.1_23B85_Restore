@interface VSSubscriptionAccountHashValueTransformer
- (id)transformedValue:(id)value;
@end

@implementation VSSubscriptionAccountHashValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy length])
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end