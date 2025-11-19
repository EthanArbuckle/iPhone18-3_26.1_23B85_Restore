@interface HMUserActionPredictionTransformerMatter
+ (id)matchingMatterAccessoryForTargetIdentifier:(id)a3 home:(id)a4;
- (HMUserActionPredictionTransformerMatter)init;
@end

@implementation HMUserActionPredictionTransformerMatter

+ (id)matchingMatterAccessoryForTargetIdentifier:(id)a3 home:(id)a4
{
  v5 = sub_19BE0DFAC();
  v7 = v6;
  v8 = a4;
  v9 = sub_19BB618C8(v5, v7, v8);

  return v9;
}

- (HMUserActionPredictionTransformerMatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HMUserActionPredictionTransformerMatter();
  return [(HMUserActionPredictionTransformerMatter *)&v3 init];
}

@end