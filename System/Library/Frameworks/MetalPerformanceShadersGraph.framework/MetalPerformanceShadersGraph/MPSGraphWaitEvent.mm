@interface MPSGraphWaitEvent
- (MPSGraphWaitEvent)initWithEvent:(id)event value:(unint64_t)value;
@end

@implementation MPSGraphWaitEvent

- (MPSGraphWaitEvent)initWithEvent:(id)event value:(unint64_t)value
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = MPSGraphWaitEvent;
  v7 = [(MPSGraphWaitEvent *)&v11 init];
  event = v7->_event;
  v7->_event = eventCopy;
  v9 = v7;

  v9->_value = value;
  return v9;
}

@end