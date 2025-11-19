@interface INIntentWellnessUnitTypeSlotValueTransformer
+ (Class)transformedValueClass;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation INIntentWellnessUnitTypeSlotValueTransformer

+ (Class)transformedValueClass
{
  getHKUnitClass_95490();

  return objc_opt_class();
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  [objc_opt_class() reverseTransformedValueClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = INIntentSlotValueTransformFromWellnessUnitType(v3);
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
    v4 = INIntentSlotValueTransformToWellnessUnitType(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end