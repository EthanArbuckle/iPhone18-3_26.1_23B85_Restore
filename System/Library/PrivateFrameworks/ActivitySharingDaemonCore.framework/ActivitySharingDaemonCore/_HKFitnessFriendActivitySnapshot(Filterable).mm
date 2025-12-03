@interface _HKFitnessFriendActivitySnapshot(Filterable)
- (uint64_t)filter_description;
@end

@implementation _HKFitnessFriendActivitySnapshot(Filterable)

- (uint64_t)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  snapshotIndex = [self snapshotIndex];
  [self energyBurned];
  v5 = v4;
  [self energyBurnedGoal];
  v7 = v6;
  [self mmv];
  v9 = v8;
  [self mmg];
  v11 = v10;
  [self briskMinutes];
  v13 = v12;
  [self briskMinutesGoal];
  v15 = v14;
  [self activeHours];
  v17 = v16;
  [self activeHoursGoal];
  v19 = v18;
  [self stepCount];
  v21 = v20;
  [self walkingAndRunningDistance];
  return [v2 stringWithFormat:@"_HKFitnessFriendActivitySnapshot: %lld, %f/%f, %f/%f, %f/%f, %f/%f, %lu, %f", snapshotIndex, v5, v7, v9, v11, v13, v15, v17, v19, v21, v22];
}

@end