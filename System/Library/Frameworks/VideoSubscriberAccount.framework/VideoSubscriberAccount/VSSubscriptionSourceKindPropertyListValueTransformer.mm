@interface VSSubscriptionSourceKindPropertyListValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSSubscriptionSourceKindPropertyListValueTransformer

- (id)transformedValue:(id)value
{
  integerValue = [value integerValue];
  v4 = @"PSSSIdentifierTypeURL";
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return @"PSSSIdentifierTypeBundle";
  }
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqual:@"PSSSIdentifierTypeBundle"])
  {
    v4 = &unk_284DF3490;
  }

  else if ([valueCopy isEqual:@"PSSSIdentifierTypeURL"])
  {
    v4 = &unk_284DF34A8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end