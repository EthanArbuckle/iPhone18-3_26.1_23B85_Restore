@interface MPSGraphSignalEvent
- (MPSGraphSignalEvent)initWithEvent:(id)a3 executionStage:(unint64_t)a4 value:(unint64_t)a5;
@end

@implementation MPSGraphSignalEvent

- (MPSGraphSignalEvent)initWithEvent:(id)a3 executionStage:(unint64_t)a4 value:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = MPSGraphSignalEvent;
  v9 = [(MPSGraphSignalEvent *)&v13 init];
  event = v9->_event;
  v9->_event = v8;
  v11 = v9;

  v11->_value = a5;
  v11->_executionStage = a4;
  return v11;
}

@end