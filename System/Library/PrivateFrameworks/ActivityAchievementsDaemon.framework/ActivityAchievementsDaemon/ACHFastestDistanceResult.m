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
- (void)setBest10KDuration:(double)a3;
- (void)setBest5KDuration:(double)a3;
- (void)setBestHalfMarathonDuration:(double)a3;
- (void)setBestMarathonDuration:(double)a3;
- (void)setBestWheelchair10KDuration:(double)a3;
- (void)setBestWheelchair5KDuration:(double)a3;
- (void)setBestWheelchairHalfMarathonDuration:(double)a3;
- (void)setBestWheelchairMarathonDuration:(double)a3;
@end

@implementation ACHFastestDistanceResult

- (double)best5KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBest5KDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)best10KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBest10KDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestWheelchair5KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchair5KDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestWheelchair10KDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchair10KDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestHalfMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestHalfMarathonDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestMarathonDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestWheelchairHalfMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchairHalfMarathonDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bestWheelchairMarathonDuration
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBestWheelchairMarathonDuration:(double)a3
{
  v5 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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