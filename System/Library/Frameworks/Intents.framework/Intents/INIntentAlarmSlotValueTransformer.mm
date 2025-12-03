@interface INIntentAlarmSlotValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation INIntentAlarmSlotValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromAlarm(valueCopy);
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
    v4 = INIntentSlotValueTransformToAlarm(valueCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end