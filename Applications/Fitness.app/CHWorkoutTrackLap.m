@interface CHWorkoutTrackLap
- (CHWorkoutTrackLap)initWithWorkoutEvent:(id)a3;
- (id)description;
@end

@implementation CHWorkoutTrackLap

- (CHWorkoutTrackLap)initWithWorkoutEvent:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CHWorkoutTrackLap;
  v5 = [(CHWorkoutTrackLap *)&v20 init];
  if (v5)
  {
    v6 = [v4 dateInterval];
    v7 = [v6 startDate];
    [(CHWorkoutSegment *)v5 setStartDate:v7];

    v8 = [v4 dateInterval];
    v9 = [v8 endDate];
    [(CHWorkoutSegment *)v5 setEndDate:v9];

    v10 = [v4 metadata];
    v11 = [v10 objectForKeyedSubscript:FIPrivateMetadataKeyLapIndex];

    -[CHWorkoutTrackLap setLapIndex:](v5, "setLapIndex:", [v11 integerValue]);
    v12 = [v4 metadata];
    v13 = [v12 objectForKeyedSubscript:FIPrivateMetadataKeyLaneNumber];

    -[CHWorkoutTrackLap setLaneNumber:](v5, "setLaneNumber:", [v13 integerValue]);
    v14 = [v4 metadata];
    v15 = [v14 objectForKeyedSubscript:FIPrivateMetadataKeyLapDistance];

    [(CHWorkoutSegment *)v5 setDistance:v15];
    v16 = [v4 metadata];
    v17 = [v16 objectForKeyedSubscript:FIPrivateMetadataKeyLapDuration];

    if (v17)
    {
      v18 = +[HKUnit secondUnit];
      [v17 doubleValueForUnit:v18];
    }

    else
    {
      v18 = [v4 dateInterval];
      [v18 duration];
    }

    [(CHWorkoutSegment *)v5 setElapsedTime:?];
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CHWorkoutTrackLap;
  v3 = [(CHWorkoutSegment *)&v6 description];
  v4 = [NSString stringWithFormat:@"(TRACK LAP) %@: Index: %li Lane: %li", v3, [(CHWorkoutTrackLap *)self lapIndex], [(CHWorkoutTrackLap *)self laneNumber]];;

  return v4;
}

@end