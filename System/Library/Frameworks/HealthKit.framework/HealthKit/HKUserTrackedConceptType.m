@interface HKUserTrackedConceptType
- (HKUserTrackedConceptType)initWithIdentifier:(id)a3;
@end

@implementation HKUserTrackedConceptType

- (HKUserTrackedConceptType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HKObjectType userTrackedConceptTypeForIdentifier:v4];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), v4}];
  }

  return v5;
}

@end