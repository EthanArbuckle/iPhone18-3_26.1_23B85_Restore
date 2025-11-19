@interface MPSGraphWaitEvent
- (MPSGraphWaitEvent)initWithEvent:(id)a3 value:(unint64_t)a4;
@end

@implementation MPSGraphWaitEvent

- (MPSGraphWaitEvent)initWithEvent:(id)a3 value:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MPSGraphWaitEvent;
  v7 = [(MPSGraphWaitEvent *)&v11 init];
  event = v7->_event;
  v7->_event = v6;
  v9 = v7;

  v9->_value = a4;
  return v9;
}

@end