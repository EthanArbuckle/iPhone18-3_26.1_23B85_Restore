@interface LPSpecializationMetadata
+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation;
- (LPSpecializationMetadata)initWithCoder:(id)a3;
@end

@implementation LPSpecializationMetadata

- (LPSpecializationMetadata)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = LPSpecializationMetadata;
  return [(LPSpecializationMetadata *)&v4 init];
}

+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

@end