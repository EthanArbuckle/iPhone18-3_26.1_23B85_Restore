@interface ATXUnifiedModeEvent
- (ATXUnifiedModeEvent)initWithMode:(unint64_t)mode startTime:(id)time endTime:(id)endTime;
@end

@implementation ATXUnifiedModeEvent

- (ATXUnifiedModeEvent)initWithMode:(unint64_t)mode startTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = ATXUnifiedModeEvent;
  v11 = [(ATXUnifiedModeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    objc_storeStrong(&v11->_startTime, time);
    objc_storeStrong(&v12->_endTime, endTime);
  }

  return v12;
}

@end