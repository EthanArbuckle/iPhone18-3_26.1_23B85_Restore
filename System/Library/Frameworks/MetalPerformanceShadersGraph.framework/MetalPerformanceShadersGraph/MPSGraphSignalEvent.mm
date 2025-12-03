@interface MPSGraphSignalEvent
- (MPSGraphSignalEvent)initWithEvent:(id)event executionStage:(unint64_t)stage value:(unint64_t)value;
@end

@implementation MPSGraphSignalEvent

- (MPSGraphSignalEvent)initWithEvent:(id)event executionStage:(unint64_t)stage value:(unint64_t)value
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = MPSGraphSignalEvent;
  v9 = [(MPSGraphSignalEvent *)&v13 init];
  event = v9->_event;
  v9->_event = eventCopy;
  v11 = v9;

  v11->_value = value;
  v11->_executionStage = stage;
  return v11;
}

@end