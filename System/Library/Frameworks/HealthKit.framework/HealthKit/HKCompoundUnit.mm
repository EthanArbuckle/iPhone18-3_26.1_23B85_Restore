@interface HKCompoundUnit
@end

@implementation HKCompoundUnit

void __28___HKCompoundUnit_dimension__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dimension];
  [v4 multiplyByFactor:v5 exponent:a3];
}

void __77___HKCompoundUnit__computeBaseUnitReductionAndProportionalSize_withCycleSet___block_invoke(void *a1, void *a2, uint64_t a3)
{
  __x = 1.0;
  v5 = [a2 _baseUnitReductionAndProportionalSize:&__x withCycleSet:a1[4]];
  *(*(a1[6] + 8) + 24) = pow(__x, a3) * *(*(a1[6] + 8) + 24);
  v6 = a1[5];
  v7 = [v5 factorizationByRaisingToExponent:a3];
  [v6 multiplyByFactorization:v7];
}

@end