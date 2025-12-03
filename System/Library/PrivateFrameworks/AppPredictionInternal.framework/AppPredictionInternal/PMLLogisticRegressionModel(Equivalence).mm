@interface PMLLogisticRegressionModel(Equivalence)
- (uint64_t)isEqual:()Equivalence;
- (uint64_t)isEqualToPMLLogisticRegressionModel:()Equivalence;
@end

@implementation PMLLogisticRegressionModel(Equivalence)

- (uint64_t)isEqual:()Equivalence
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [self isEqualToPMLLogisticRegressionModel:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)isEqualToPMLLogisticRegressionModel:()Equivalence
{
  v4 = a3;
  weights = [self weights];
  asMutableDenseVector = [weights asMutableDenseVector];
  weights2 = [v4 weights];

  asMutableDenseVector2 = [weights2 asMutableDenseVector];
  v9 = [asMutableDenseVector isEqual:asMutableDenseVector2];

  return v9;
}

@end