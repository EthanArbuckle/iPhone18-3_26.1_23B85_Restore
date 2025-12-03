@interface _AFDeviceRequestHandlingRecordMutation
- (_AFDeviceRequestHandlingRecordMutation)initWithBase:(id)base;
- (id)getRequestID;
- (unint64_t)getDeviceRoles;
@end

@implementation _AFDeviceRequestHandlingRecordMutation

- (unint64_t)getDeviceRoles
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_deviceRoles;
  }

  else
  {
    return [(AFDeviceRequestHandlingRecord *)self->_base deviceRoles];
  }
}

- (id)getRequestID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    requestID = self->_requestID;
  }

  else
  {
    requestID = [(AFDeviceRequestHandlingRecord *)self->_base requestID];
  }

  return requestID;
}

- (_AFDeviceRequestHandlingRecordMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFDeviceRequestHandlingRecordMutation;
  v6 = [(_AFDeviceRequestHandlingRecordMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end