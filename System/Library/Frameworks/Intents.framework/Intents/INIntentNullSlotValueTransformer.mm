@interface INIntentNullSlotValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation INIntentNullSlotValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() reverseTransformedValueClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    null = 0;
  }

  return null;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() transformedValueClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(_INPBEmpty);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end