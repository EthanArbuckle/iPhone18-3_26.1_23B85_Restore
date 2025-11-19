@interface CHMindfulnessSessionsStatistics
- (CHMindfulnessSessionsStatistics)init;
- (CHMindfulnessSessionsStatistics)initWithSessionCount:(int64_t)a3 totalDuration:(double)a4;
- (id)formattedSessionCount;
- (id)formattedTotalDurationWithFormattingManager:(id)a3;
@end

@implementation CHMindfulnessSessionsStatistics

- (CHMindfulnessSessionsStatistics)initWithSessionCount:(int64_t)a3 totalDuration:(double)a4
{
  *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_sessionCount) = a3;
  *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration) = a4;
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
  v4 = self;
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

- (id)formattedTotalDurationWithFormattingManager:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration);
  v5 = a3;
  v6 = self;
  result = [v5 stringWithDuration:3 durationFormat:v4];
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