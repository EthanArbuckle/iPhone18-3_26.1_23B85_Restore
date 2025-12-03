@interface AFEvent
- (AFEvent)initWithBMEvent:(id)event;
@end

@implementation AFEvent

- (AFEvent)initWithBMEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = AFEvent;
  v6 = [(AFEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bmEvent, event);
  }

  return v7;
}

@end