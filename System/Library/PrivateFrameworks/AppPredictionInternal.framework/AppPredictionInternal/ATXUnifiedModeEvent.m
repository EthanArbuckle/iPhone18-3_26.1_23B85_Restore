@interface ATXUnifiedModeEvent
- (ATXUnifiedModeEvent)initWithMode:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5;
@end

@implementation ATXUnifiedModeEvent

- (ATXUnifiedModeEvent)initWithMode:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATXUnifiedModeEvent;
  v11 = [(ATXUnifiedModeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = a3;
    objc_storeStrong(&v11->_startTime, a4);
    objc_storeStrong(&v12->_endTime, a5);
  }

  return v12;
}

@end