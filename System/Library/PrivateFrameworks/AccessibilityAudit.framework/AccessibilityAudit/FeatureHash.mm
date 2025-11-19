@interface FeatureHash
- (FeatureHash)initWithValues:(id)a3;
@end

@implementation FeatureHash

- (FeatureHash)initWithValues:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FeatureHash;
  v5 = [(FeatureHash *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v7 = [v6 UUIDString];
    [(FeatureHash *)v5 setHashID:v7];

    [(FeatureHash *)v5 setValues:v4];
  }

  return v5;
}

@end