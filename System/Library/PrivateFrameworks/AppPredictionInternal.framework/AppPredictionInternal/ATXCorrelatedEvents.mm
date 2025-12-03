@interface ATXCorrelatedEvents
- (ATXCorrelatedEvents)initWithFirstEvent:(id)event secondEvent:(id)secondEvent;
@end

@implementation ATXCorrelatedEvents

- (ATXCorrelatedEvents)initWithFirstEvent:(id)event secondEvent:(id)secondEvent
{
  eventCopy = event;
  secondEventCopy = secondEvent;
  v12.receiver = self;
  v12.super_class = ATXCorrelatedEvents;
  v9 = [(ATXCorrelatedEvents *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstEvent, event);
    objc_storeStrong(&v10->_secondEvent, secondEvent);
  }

  return v10;
}

@end