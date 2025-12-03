@interface HMUserActionPredictionTransformerMatter
+ (id)matchingMatterAccessoryForTargetIdentifier:(id)identifier home:(id)home;
- (HMUserActionPredictionTransformerMatter)init;
@end

@implementation HMUserActionPredictionTransformerMatter

+ (id)matchingMatterAccessoryForTargetIdentifier:(id)identifier home:(id)home
{
  v5 = sub_19BE0DFAC();
  v7 = v6;
  homeCopy = home;
  v9 = sub_19BB618C8(v5, v7, homeCopy);

  return v9;
}

- (HMUserActionPredictionTransformerMatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HMUserActionPredictionTransformerMatter();
  return [(HMUserActionPredictionTransformerMatter *)&v3 init];
}

@end