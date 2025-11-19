@interface ATXReservoirSampler
+ (id)sampleWeightedArray:(id)a3;
+ (id)sampleWeightedArray:(id)a3 numToSample:(unint64_t)a4;
@end

@implementation ATXReservoirSampler

+ (id)sampleWeightedArray:(id)a3
{
  v3 = [a3 _pas_mappedArrayWithIndexedTransform:&__block_literal_global_10];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_10];
  v5 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_13];

  return v5;
}

id __43__ATXReservoirSampler_sampleWeightedArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 doubleValue];
  if (v4 >= 0.001)
  {
    v8 = v4;
    +[ATXReservoirSampler _standardUniformDistribution];
    v10 = log(v9 + 0.001);
    v11 = MEMORY[0x277D42648];
    v12 = v10 / v8;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v7 = [v11 tupleWithFirst:v6 second:v13];
  }

  else
  {
    v5 = MEMORY[0x277D42648];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v7 = [v5 tupleWithFirst:v6 second:&unk_283988F30];
  }

  return v7;
}

uint64_t __43__ATXReservoirSampler_sampleWeightedArray___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 second];
  v6 = [v4 second];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)sampleWeightedArray:(id)a3 numToSample:(unint64_t)a4
{
  v5 = [a1 sampleWeightedArray:a3];
  v6 = [v5 count];
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 subarrayWithRange:{0, v7}];

  return v8;
}

@end