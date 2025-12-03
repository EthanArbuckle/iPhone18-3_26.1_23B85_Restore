@interface INIntentWellnessUnitTypeSlotValueTransformer
+ (Class)transformedValueClass;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation INIntentWellnessUnitTypeSlotValueTransformer

+ (Class)transformedValueClass
{
  getHKUnitClass_95490();

  return objc_opt_class();
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromWellnessUnitType(valueCopy);
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
    v4 = INIntentSlotValueTransformToWellnessUnitType(valueCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end