@interface APSServerTimeTracker
- (APSServerTimeTracker)init;
- (NSString)aps_prettyDescription;
- (unint64_t)serverTimeInNanoSeconds;
- (void)updateServerTimeWithTimeInMilliseconds:(unint64_t)milliseconds;
@end

@implementation APSServerTimeTracker

- (unint64_t)serverTimeInNanoSeconds
{
  selfCopy = self;
  v3 = sub_1000C666C();

  return v3;
}

- (void)updateServerTimeWithTimeInMilliseconds:(unint64_t)milliseconds
{
  selfCopy = self;
  sub_1000C6B1C(milliseconds);
}

- (NSString)aps_prettyDescription
{
  selfCopy = self;
  sub_1000C6DA8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (APSServerTimeTracker)init
{
  *(&self->super.isa + OBJC_IVAR___APSServerTimeTracker__mostRecentServerTimeInNanoSeconds) = 0;
  *(&self->super.isa + OBJC_IVAR___APSServerTimeTracker__alignedMonotonicTimeInNanoSeconds) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServerTimeTracker();
  return [(APSServerTimeTracker *)&v3 init];
}

@end