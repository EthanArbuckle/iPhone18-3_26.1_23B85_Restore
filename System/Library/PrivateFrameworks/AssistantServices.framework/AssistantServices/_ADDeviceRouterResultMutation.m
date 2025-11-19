@interface _ADDeviceRouterResultMutation
- (_ADDeviceRouterResultMutation)initWithBase:(id)a3;
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
    v2 = self->_peerInfo;
  }

  else
  {
    v2 = [(ADDeviceRouterResult *)self->_base peerInfo];
  }

  return v2;
}

- (id)getError
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_error;
  }

  else
  {
    v2 = [(ADDeviceRouterResult *)self->_base error];
  }

  return v2;
}

- (id)getCommandRelayProxyIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_commandRelayProxyIdentifier;
  }

  else
  {
    v2 = [(ADDeviceRouterResult *)self->_base commandRelayProxyIdentifier];
  }

  return v2;
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
    v2 = self->_contextIdentifier;
  }

  else
  {
    v2 = [(ADDeviceRouterResult *)self->_base contextIdentifier];
  }

  return v2;
}

- (_ADDeviceRouterResultMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceRouterResultMutation;
  v6 = [(_ADDeviceRouterResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end