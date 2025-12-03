@interface _AFRequestHandlingContextMutation
- (_AFRequestHandlingContextMutation)initWithBase:(id)base;
- (id)getInputAssistantID;
- (id)getInputDeviceID;
- (id)getRequestID;
@end

@implementation _AFRequestHandlingContextMutation

- (id)getInputDeviceID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    inputDeviceID = self->_inputDeviceID;
  }

  else
  {
    inputDeviceID = [(AFRequestHandlingContext *)self->_base inputDeviceID];
  }

  return inputDeviceID;
}

- (id)getInputAssistantID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    inputAssistantID = self->_inputAssistantID;
  }

  else
  {
    inputAssistantID = [(AFRequestHandlingContext *)self->_base inputAssistantID];
  }

  return inputAssistantID;
}

- (id)getRequestID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    requestID = self->_requestID;
  }

  else
  {
    requestID = [(AFRequestHandlingContext *)self->_base requestID];
  }

  return requestID;
}

- (_AFRequestHandlingContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFRequestHandlingContextMutation;
  v6 = [(_AFRequestHandlingContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end