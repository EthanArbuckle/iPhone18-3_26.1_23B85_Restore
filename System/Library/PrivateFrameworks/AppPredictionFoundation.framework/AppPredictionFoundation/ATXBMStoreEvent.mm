@interface ATXBMStoreEvent
- (ATXBMStoreEvent)initWithEventBody:(id)body timestamp:(double)timestamp;
@end

@implementation ATXBMStoreEvent

- (ATXBMStoreEvent)initWithEventBody:(id)body timestamp:(double)timestamp
{
  bodyCopy = body;
  v11.receiver = self;
  v11.super_class = ATXBMStoreEvent;
  v8 = [(ATXBMStoreEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventBody, body);
    v9->_timestamp = timestamp;
  }

  return v9;
}

@end