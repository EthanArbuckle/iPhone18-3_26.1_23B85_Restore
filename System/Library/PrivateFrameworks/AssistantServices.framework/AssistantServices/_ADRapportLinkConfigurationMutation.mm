@interface _ADRapportLinkConfigurationMutation
- (_ADRapportLinkConfigurationMutation)initWithBase:(id)base;
- (id)getConnectionOptions;
- (id)getDiscoveryOptions;
- (id)getTransportOptions;
- (int64_t)getEnablesProximityTracking;
@end

@implementation _ADRapportLinkConfigurationMutation

- (int64_t)getEnablesProximityTracking
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_enablesProximityTracking;
  }

  else
  {
    return [(ADRapportLinkConfiguration *)self->_base enablesProximityTracking];
  }
}

- (id)getConnectionOptions
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    connectionOptions = self->_connectionOptions;
  }

  else
  {
    connectionOptions = [(ADRapportLinkConfiguration *)self->_base connectionOptions];
  }

  return connectionOptions;
}

- (id)getTransportOptions
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    transportOptions = self->_transportOptions;
  }

  else
  {
    transportOptions = [(ADRapportLinkConfiguration *)self->_base transportOptions];
  }

  return transportOptions;
}

- (id)getDiscoveryOptions
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    discoveryOptions = self->_discoveryOptions;
  }

  else
  {
    discoveryOptions = [(ADRapportLinkConfiguration *)self->_base discoveryOptions];
  }

  return discoveryOptions;
}

- (_ADRapportLinkConfigurationMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADRapportLinkConfigurationMutation;
  v6 = [(_ADRapportLinkConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end