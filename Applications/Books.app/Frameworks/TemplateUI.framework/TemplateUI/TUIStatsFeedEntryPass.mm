@interface TUIStatsFeedEntryPass
- (TUIStatsFeedEntryPass)initWithURL:(id)l uid:(id)uid reason:(unint64_t)reason timingCollector:(id)collector timeBase:(mach_timebase_info)base eventCollector:(id)eventCollector;
@end

@implementation TUIStatsFeedEntryPass

- (TUIStatsFeedEntryPass)initWithURL:(id)l uid:(id)uid reason:(unint64_t)reason timingCollector:(id)collector timeBase:(mach_timebase_info)base eventCollector:(id)eventCollector
{
  lCopy = l;
  uidCopy = uid;
  collectorCopy = collector;
  eventCollectorCopy = eventCollector;
  v26.receiver = self;
  v26.super_class = TUIStatsFeedEntryPass;
  v17 = [(TUIStatsFeedEntryPass *)&v26 init];
  if (v17)
  {
    v18 = [lCopy copy];
    url = v17->_url;
    v17->_url = v18;

    v20 = [uidCopy copy];
    uid = v17->_uid;
    v17->_uid = v20;

    v22 = 0;
    v17->_reason = reason;
    do
    {
      [collectorCopy elapsedTimeForPhase:v22];
      v17->_elapsedTime[v22++] = v23;
    }

    while (v22 != 5);
    for (i = 0; i != 29; ++i)
    {
      v17->_eventCount[i] = [eventCollectorCopy countForEvent:i];
    }
  }

  return v17;
}

@end