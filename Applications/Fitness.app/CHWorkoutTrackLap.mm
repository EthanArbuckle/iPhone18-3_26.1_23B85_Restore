@interface CHWorkoutTrackLap
- (CHWorkoutTrackLap)initWithWorkoutEvent:(id)event;
- (id)description;
@end

@implementation CHWorkoutTrackLap

- (CHWorkoutTrackLap)initWithWorkoutEvent:(id)event
{
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = CHWorkoutTrackLap;
  v5 = [(CHWorkoutTrackLap *)&v20 init];
  if (v5)
  {
    dateInterval = [eventCopy dateInterval];
    startDate = [dateInterval startDate];
    [(CHWorkoutSegment *)v5 setStartDate:startDate];

    dateInterval2 = [eventCopy dateInterval];
    endDate = [dateInterval2 endDate];
    [(CHWorkoutSegment *)v5 setEndDate:endDate];

    metadata = [eventCopy metadata];
    v11 = [metadata objectForKeyedSubscript:FIPrivateMetadataKeyLapIndex];

    -[CHWorkoutTrackLap setLapIndex:](v5, "setLapIndex:", [v11 integerValue]);
    metadata2 = [eventCopy metadata];
    v13 = [metadata2 objectForKeyedSubscript:FIPrivateMetadataKeyLaneNumber];

    -[CHWorkoutTrackLap setLaneNumber:](v5, "setLaneNumber:", [v13 integerValue]);
    metadata3 = [eventCopy metadata];
    v15 = [metadata3 objectForKeyedSubscript:FIPrivateMetadataKeyLapDistance];

    [(CHWorkoutSegment *)v5 setDistance:v15];
    metadata4 = [eventCopy metadata];
    v17 = [metadata4 objectForKeyedSubscript:FIPrivateMetadataKeyLapDuration];

    if (v17)
    {
      dateInterval3 = +[HKUnit secondUnit];
      [v17 doubleValueForUnit:dateInterval3];
    }

    else
    {
      dateInterval3 = [eventCopy dateInterval];
      [dateInterval3 duration];
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