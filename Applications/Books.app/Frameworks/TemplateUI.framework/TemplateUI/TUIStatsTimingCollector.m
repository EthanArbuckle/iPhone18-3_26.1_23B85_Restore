@interface TUIStatsTimingCollector
- (TUIStatsTimingCollector)initWithMode:(unint64_t)a3;
- (void)endPhase:(unint64_t)a3;
- (void)finalizeWithTimebase:(mach_timebase_info)a3;
- (void)reset;
- (void)startPhase:(unint64_t)a3;
@end

@implementation TUIStatsTimingCollector

- (TUIStatsTimingCollector)initWithMode:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TUIStatsTimingCollector;
  v4 = [(TUIStatsTimingCollector *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    v4->_record = (a3 & 4) != 0;
    [(TUIStatsTimingCollector *)v4 reset];
  }

  return v5;
}

- (void)reset
{
  self->_reason = 0;
  self->_times[0] = 0u;
  self->_times[1] = 0u;
  self->_times[2] = 0u;
  self->_times[3] = 0u;
  self->_times[4] = 0u;
}

- (void)startPhase:(unint64_t)a3
{
  if (self->_record)
  {
    self->_times[a3].start = mach_absolute_time();
  }
}

- (void)endPhase:(unint64_t)a3
{
  if (self->_record)
  {
    v3 = self + 16 * a3;
    v4 = *(v3 + 3);
    v5 = mach_absolute_time();
    v6 = -v4;
    if (v4 >= v5)
    {
      v6 = ~v4;
    }

    *(v3 + 4) += v5 + v6;
  }
}

- (void)finalizeWithTimebase:(mach_timebase_info)a3
{
  v3 = 32;
  v4 = 104;
  do
  {
    *(&self->super.isa + v4) = a3.numer * *(&self->super.isa + v3) / a3.denom / 1000000000.0;
    v3 += 16;
    v4 += 8;
  }

  while (v3 != 112);
}

@end