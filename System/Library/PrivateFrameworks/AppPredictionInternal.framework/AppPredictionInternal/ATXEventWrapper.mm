@interface ATXEventWrapper
- (ATXEventWrapper)initWithATXEvent:(id)event;
- (ATXEventWrapper)initWithDuetEvent:(id)event;
@end

@implementation ATXEventWrapper

- (ATXEventWrapper)initWithDuetEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = ATXEventWrapper;
  v6 = [(ATXEventWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dkEvent, event);
  }

  return v7;
}

- (ATXEventWrapper)initWithATXEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = ATXEventWrapper;
  v6 = [(ATXEventWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_atxEvent, event);
  }

  return v7;
}

@end