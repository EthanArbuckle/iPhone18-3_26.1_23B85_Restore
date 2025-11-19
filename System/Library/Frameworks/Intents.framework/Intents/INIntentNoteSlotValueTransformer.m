@interface INIntentNoteSlotValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation INIntentNoteSlotValueTransformer

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromNote(v3);
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
    v4 = INIntentSlotValueTransformToNote(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end