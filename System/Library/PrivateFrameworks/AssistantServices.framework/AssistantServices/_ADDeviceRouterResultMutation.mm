@interface _ADDeviceRouterResultMutation
- (_ADDeviceRouterResultMutation)initWithBase:(id)base;
- (id)getCommandRelayProxyIdentifier;
- (id)getContextIdentifier;
- (id)getError;
- (id)getPeerInfo;
- (int64_t)getProximity;
@end

@implementation _ADDeviceRouterResultMutation

- (id)getPeerInfo
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    peerInfo = self->_peerInfo;
  }

  else
  {
    peerInfo = [(ADDeviceRouterResult *)self->_base peerInfo];
  }

  return peerInfo;
}

- (id)getError
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    error = self->_error;
  }

  else
  {
    error = [(ADDeviceRouterResult *)self->_base error];
  }

  return error;
}

- (id)getCommandRelayProxyIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    commandRelayProxyIdentifier = self->_commandRelayProxyIdentifier;
  }

  else
  {
    commandRelayProxyIdentifier = [(ADDeviceRouterResult *)self->_base commandRelayProxyIdentifier];
  }

  return commandRelayProxyIdentifier;
}

- (int64_t)getProximity
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_proximity;
  }

  else
  {
    return [(ADDeviceRouterResult *)self->_base proximity];
  }
}

- (id)getContextIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    contextIdentifier = self->_contextIdentifier;
  }

  else
  {
    contextIdentifier = [(ADDeviceRouterResult *)self->_base contextIdentifier];
  }

  return contextIdentifier;
}

- (_ADDeviceRouterResultMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceRouterResultMutation;
  v6 = [(_ADDeviceRouterResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end