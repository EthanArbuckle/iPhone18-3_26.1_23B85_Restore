@interface _AFDeviceContextHistoryConfigurationMutation
- (BOOL)getKeepsHistory;
- (_AFDeviceContextHistoryConfigurationMutation)initWithBase:(id)a3;
- (unint64_t)getHistoryBufferSize;
@end

@implementation _AFDeviceContextHistoryConfigurationMutation

- (BOOL)getKeepsHistory
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_keepsHistory;
  }

  else
  {
    return [(AFDeviceContextHistoryConfiguration *)self->_base keepsHistory];
  }
}

- (unint64_t)getHistoryBufferSize
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_historyBufferSize;
  }

  else
  {
    return [(AFDeviceContextHistoryConfiguration *)self->_base historyBufferSize];
  }
}

- (_AFDeviceContextHistoryConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFDeviceContextHistoryConfigurationMutation;
  v6 = [(_AFDeviceContextHistoryConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end