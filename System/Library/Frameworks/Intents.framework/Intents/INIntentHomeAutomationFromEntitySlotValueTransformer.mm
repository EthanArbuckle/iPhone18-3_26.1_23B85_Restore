@interface INIntentHomeAutomationFromEntitySlotValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation INIntentHomeAutomationFromEntitySlotValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromHomeAutomationFromEntity(valueCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() transformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformToHomeAutomationFromEntity(valueCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end