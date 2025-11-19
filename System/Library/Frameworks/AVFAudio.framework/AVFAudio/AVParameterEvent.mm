@interface AVParameterEvent
- (AVParameterEvent)initWithParameterEvent:(ParameterEvent *)a3;
- (AVParameterEvent)initWithParameterID:(UInt32)parameterID scope:(UInt32)scope element:(UInt32)element value:(float)value;
@end

@implementation AVParameterEvent

- (AVParameterEvent)initWithParameterEvent:(ParameterEvent *)a3
{
  v5.receiver = self;
  v5.super_class = AVParameterEvent;
  result = [(AVParameterEvent *)&v5 init];
  if (result)
  {
    result->_event = *a3;
  }

  return result;
}

- (AVParameterEvent)initWithParameterID:(UInt32)parameterID scope:(UInt32)scope element:(UInt32)element value:(float)value
{
  v11.receiver = self;
  v11.super_class = AVParameterEvent;
  result = [(AVParameterEvent *)&v11 init];
  if (result)
  {
    result->_event.parameterID = parameterID;
    result->_event.scope = scope;
    result->_event.element = element;
    result->_event.value = value;
  }

  return result;
}

@end