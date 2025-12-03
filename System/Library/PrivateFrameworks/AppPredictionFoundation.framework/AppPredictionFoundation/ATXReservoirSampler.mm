@interface ATXReservoirSampler
+ (id)sampleWeightedArray:(id)array;
+ (id)sampleWeightedArray:(id)array numToSample:(unint64_t)sample;
@end

@implementation ATXReservoirSampler

+ (id)sampleWeightedArray:(id)array
{
  v3 = [array _pas_mappedArrayWithIndexedTransform:&__block_literal_global_10];
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

+ (id)sampleWeightedArray:(id)array numToSample:(unint64_t)sample
{
  v5 = [self sampleWeightedArray:array];
  v6 = [v5 count];
  if (v6 >= sample)
  {
    sampleCopy = sample;
  }

  else
  {
    sampleCopy = v6;
  }

  v8 = [v5 subarrayWithRange:{0, sampleCopy}];

  return v8;
}

@end