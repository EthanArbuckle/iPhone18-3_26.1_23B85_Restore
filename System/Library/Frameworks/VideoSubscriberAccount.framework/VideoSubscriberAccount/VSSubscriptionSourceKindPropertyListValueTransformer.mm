@interface VSSubscriptionSourceKindPropertyListValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSSubscriptionSourceKindPropertyListValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = [a3 integerValue];
  v4 = @"PSSSIdentifierTypeURL";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return @"PSSSIdentifierTypeBundle";
  }
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"PSSSIdentifierTypeBundle"])
  {
    v4 = &unk_284DF3490;
  }

  else if ([v3 isEqual:@"PSSSIdentifierTypeURL"])
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