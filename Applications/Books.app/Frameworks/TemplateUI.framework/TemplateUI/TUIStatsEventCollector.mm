@interface TUIStatsEventCollector
- (TUIStatsEventCollector)init;
- (void)reset;
@end

@implementation TUIStatsEventCollector

- (TUIStatsEventCollector)init
{
  v5.receiver = self;
  v5.super_class = TUIStatsEventCollector;
  v2 = [(TUIStatsEventCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIStatsEventCollector *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_eventCount[28] = 0;
  *&self->_eventCount[26] = 0u;
  *&self->_eventCount[24] = 0u;
  *&self->_eventCount[22] = 0u;
  *&self->_eventCount[20] = 0u;
  *&self->_eventCount[18] = 0u;
  *&self->_eventCount[16] = 0u;
  *&self->_eventCount[14] = 0u;
  *&self->_eventCount[12] = 0u;
  *&self->_eventCount[10] = 0u;
  *&self->_eventCount[8] = 0u;
  *&self->_eventCount[6] = 0u;
  *&self->_eventCount[4] = 0u;
  *&self->_eventCount[2] = 0u;
  *self->_eventCount = 0u;
}

@end