@interface FMTSEvent
- (FMTSEvent)initWithTimestamp:(unint64_t)a3;
@end

@implementation FMTSEvent

- (FMTSEvent)initWithTimestamp:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = FMTSEvent;
  v4 = [(FMTSEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_timestamp = a3;
    v4->_usedInAnomalyCount = 0;
    v6 = v4;
  }

  return v5;
}

@end