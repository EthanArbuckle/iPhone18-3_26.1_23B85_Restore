@interface INIntentDateSlotValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation INIntentDateSlotValueTransformer

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromTimestamp(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  [objc_opt_class() transformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformToTimestamp(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end