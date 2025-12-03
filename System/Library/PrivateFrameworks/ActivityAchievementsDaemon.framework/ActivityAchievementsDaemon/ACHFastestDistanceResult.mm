@interface ACHFastestDistanceResult
- (ACHFastestDistanceResult)init;
- (double)best10KDuration;
- (double)best5KDuration;
- (double)bestHalfMarathonDuration;
- (double)bestMarathonDuration;
- (double)bestWheelchair10KDuration;
- (double)bestWheelchair5KDuration;
- (double)bestWheelchairHalfMarathonDuration;
- (double)bestWheelchairMarathonDuration;
- (void)setBest10KDuration:(double)duration;
- (void)setBest5KDuration:(double)duration;
- (void)setBestHalfMarathonDuration:(double)duration;
- (void)setBestMarathonDuration:(double)duration;
- (void)setBestWheelchair10KDuration:(double)duration;
- (void)setBestWheelchair5KDuration:(double)duration;
- (void)setBestWheelchairHalfMarathonDuration:(double)duration;
- (void)setBestWheelchairMarathonDuration:(double)duration;
@end

@implementation ACHFastestDistanceResult

- (double)best5KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBest5KDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)best10KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBest10KDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestWheelchair5KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchair5KDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestWheelchair10KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchair10KDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestHalfMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestHalfMarathonDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestMarathonDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestWheelchairHalfMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchairHalfMarathonDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (double)bestWheelchairMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchairMarathonDuration:(double)duration
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = duration;
}

- (ACHFastestDistanceResult)init
{
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_best5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_best10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  v3.receiver = self;
  v3.super_class = ACHFastestDistanceResult;
  return [(ACHFastestDistanceResult *)&v3 init];
}

@end