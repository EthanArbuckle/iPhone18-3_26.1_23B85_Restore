@interface ATXDisplayStateEvent
- (ATXDisplayStateEvent)initWithDisplayState:(BOOL)a3 absoluteTimestamp:(id)a4;
@end

@implementation ATXDisplayStateEvent

- (ATXDisplayStateEvent)initWithDisplayState:(BOOL)a3 absoluteTimestamp:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXDisplayStateEvent;
  v8 = [(ATXDisplayStateEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_displayState = a3;
    objc_storeStrong(&v8->_absoluteTimestamp, a4);
  }

  return v9;
}

@end