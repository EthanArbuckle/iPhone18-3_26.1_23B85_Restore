@interface _HKFitnessFriendActivitySnapshot(Filterable)
- (uint64_t)filter_description;
@end

@implementation _HKFitnessFriendActivitySnapshot(Filterable)

- (uint64_t)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 snapshotIndex];
  [a1 energyBurned];
  v5 = v4;
  [a1 energyBurnedGoal];
  v7 = v6;
  [a1 mmv];
  v9 = v8;
  [a1 mmg];
  v11 = v10;
  [a1 briskMinutes];
  v13 = v12;
  [a1 briskMinutesGoal];
  v15 = v14;
  [a1 activeHours];
  v17 = v16;
  [a1 activeHoursGoal];
  v19 = v18;
  [a1 stepCount];
  v21 = v20;
  [a1 walkingAndRunningDistance];
  return [v2 stringWithFormat:@"_HKFitnessFriendActivitySnapshot: %lld, %f/%f, %f/%f, %f/%f, %f/%f, %lu, %f", v3, v5, v7, v9, v11, v13, v15, v17, v19, v21, v22];
}

@end