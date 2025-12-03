@interface ATXDisplayStateEvent
- (ATXDisplayStateEvent)initWithDisplayState:(BOOL)state absoluteTimestamp:(id)timestamp;
@end

@implementation ATXDisplayStateEvent

- (ATXDisplayStateEvent)initWithDisplayState:(BOOL)state absoluteTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = ATXDisplayStateEvent;
  v8 = [(ATXDisplayStateEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_displayState = state;
    objc_storeStrong(&v8->_absoluteTimestamp, timestamp);
  }

  return v9;
}

@end