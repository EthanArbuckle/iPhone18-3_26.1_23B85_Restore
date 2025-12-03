@interface CHMindfulnessSessionsStatistics
- (CHMindfulnessSessionsStatistics)init;
- (CHMindfulnessSessionsStatistics)initWithSessionCount:(int64_t)count totalDuration:(double)duration;
- (id)formattedSessionCount;
- (id)formattedTotalDurationWithFormattingManager:(id)manager;
@end

@implementation CHMindfulnessSessionsStatistics

- (CHMindfulnessSessionsStatistics)initWithSessionCount:(int64_t)count totalDuration:(double)duration
{
  *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_sessionCount) = count;
  *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration) = duration;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MindfulnessSessionsStatistics();
  return [(CHMindfulnessSessionsStatistics *)&v5 init];
}

- (CHMindfulnessSessionsStatistics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)formattedSessionCount
{
  v3 = objc_opt_self();
  selfCopy = self;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = [v3 stringWithNumber:isa decimalPrecision:1];

  if (v6)
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)formattedTotalDurationWithFormattingManager:(id)manager
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration);
  managerCopy = manager;
  selfCopy = self;
  result = [managerCopy stringWithDuration:3 durationFormat:v4];
  if (result)
  {
    v8 = result;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end