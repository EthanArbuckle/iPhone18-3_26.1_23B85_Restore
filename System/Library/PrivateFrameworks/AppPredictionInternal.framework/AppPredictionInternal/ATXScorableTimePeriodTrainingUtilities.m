@interface ATXScorableTimePeriodTrainingUtilities
+ (id)allTrainableATXModes;
@end

@implementation ATXScorableTimePeriodTrainingUtilities

+ (id)allTrainableATXModes
{
  v2 = allModes();
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_209];

  return v3;
}

id __62__ATXScorableTimePeriodTrainingUtilities_allTrainableATXModes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7E8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 initWithATXMode:v5];

  return v6;
}

@end