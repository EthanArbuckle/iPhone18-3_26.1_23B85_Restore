@interface ATXBMStoreEvent
- (ATXBMStoreEvent)initWithEventBody:(id)a3 timestamp:(double)a4;
@end

@implementation ATXBMStoreEvent

- (ATXBMStoreEvent)initWithEventBody:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ATXBMStoreEvent;
  v8 = [(ATXBMStoreEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventBody, a3);
    v9->_timestamp = a4;
  }

  return v9;
}

@end