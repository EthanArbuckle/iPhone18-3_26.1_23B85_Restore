@interface INIntentJSONDictionarySlotValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation INIntentJSONDictionarySlotValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromJSONDictionary(valueCopy);
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
    v4 = INIntentSlotValueTransformToJSONDictionary(valueCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end