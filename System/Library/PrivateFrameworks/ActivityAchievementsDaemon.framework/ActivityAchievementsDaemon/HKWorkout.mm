@interface HKWorkout
@end

@implementation HKWorkout

BOOL __85__HKWorkout_ActivityAchievementsDaemon___bestDurationForKilometerCount_activityType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8] == 1;

  return v9;
}

uint64_t __71__HKWorkout_ActivityAchievementsDaemon__aad_redactedWorkoutDescription__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = aad_redactedWorkoutDescription_formatter;
  aad_redactedWorkoutDescription_formatter = v0;

  v2 = aad_redactedWorkoutDescription_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

@end