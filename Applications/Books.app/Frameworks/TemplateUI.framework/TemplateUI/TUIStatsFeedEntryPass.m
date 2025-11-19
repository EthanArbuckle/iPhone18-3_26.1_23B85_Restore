@interface TUIStatsFeedEntryPass
- (TUIStatsFeedEntryPass)initWithURL:(id)a3 uid:(id)a4 reason:(unint64_t)a5 timingCollector:(id)a6 timeBase:(mach_timebase_info)a7 eventCollector:(id)a8;
@end

@implementation TUIStatsFeedEntryPass

- (TUIStatsFeedEntryPass)initWithURL:(id)a3 uid:(id)a4 reason:(unint64_t)a5 timingCollector:(id)a6 timeBase:(mach_timebase_info)a7 eventCollector:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v26.receiver = self;
  v26.super_class = TUIStatsFeedEntryPass;
  v17 = [(TUIStatsFeedEntryPass *)&v26 init];
  if (v17)
  {
    v18 = [v13 copy];
    url = v17->_url;
    v17->_url = v18;

    v20 = [v14 copy];
    uid = v17->_uid;
    v17->_uid = v20;

    v22 = 0;
    v17->_reason = a5;
    do
    {
      [v15 elapsedTimeForPhase:v22];
      v17->_elapsedTime[v22++] = v23;
    }

    while (v22 != 5);
    for (i = 0; i != 29; ++i)
    {
      v17->_eventCount[i] = [v16 countForEvent:i];
    }
  }

  return v17;
}

@end