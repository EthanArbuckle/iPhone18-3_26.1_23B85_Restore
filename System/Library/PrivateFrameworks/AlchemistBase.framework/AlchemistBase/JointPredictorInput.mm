@interface JointPredictorInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation JointPredictorInput

- (NSSet)featureNames
{
  sub_23ED4B440(&unk_285161128);
  swift_arrayDestroy();
  v2 = sub_23ED5EA84();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_23ED5E9E4();
  v5 = v4;

  v6 = sub_23ED5BEA8(v3, v5);

  return v6;
}

@end