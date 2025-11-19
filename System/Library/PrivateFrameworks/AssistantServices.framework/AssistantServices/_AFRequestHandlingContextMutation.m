@interface _AFRequestHandlingContextMutation
- (_AFRequestHandlingContextMutation)initWithBase:(id)a3;
- (id)getInputAssistantID;
- (id)getInputDeviceID;
- (id)getRequestID;
@end

@implementation _AFRequestHandlingContextMutation

- (id)getInputDeviceID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_inputDeviceID;
  }

  else
  {
    v2 = [(AFRequestHandlingContext *)self->_base inputDeviceID];
  }

  return v2;
}

- (id)getInputAssistantID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_inputAssistantID;
  }

  else
  {
    v2 = [(AFRequestHandlingContext *)self->_base inputAssistantID];
  }

  return v2;
}

- (id)getRequestID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_requestID;
  }

  else
  {
    v2 = [(AFRequestHandlingContext *)self->_base requestID];
  }

  return v2;
}

- (_AFRequestHandlingContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFRequestHandlingContextMutation;
  v6 = [(_AFRequestHandlingContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end