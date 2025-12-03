@interface FeatureHash
- (FeatureHash)initWithValues:(id)values;
@end

@implementation FeatureHash

- (FeatureHash)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = FeatureHash;
  v5 = [(FeatureHash *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v6 UUIDString];
    [(FeatureHash *)v5 setHashID:uUIDString];

    [(FeatureHash *)v5 setValues:valuesCopy];
  }

  return v5;
}

@end