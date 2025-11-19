@interface _ADRapportLinkConfigurationMutation
- (_ADRapportLinkConfigurationMutation)initWithBase:(id)a3;
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
    v2 = self->_connectionOptions;
  }

  else
  {
    v2 = [(ADRapportLinkConfiguration *)self->_base connectionOptions];
  }

  return v2;
}

- (id)getTransportOptions
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_transportOptions;
  }

  else
  {
    v2 = [(ADRapportLinkConfiguration *)self->_base transportOptions];
  }

  return v2;
}

- (id)getDiscoveryOptions
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_discoveryOptions;
  }

  else
  {
    v2 = [(ADRapportLinkConfiguration *)self->_base discoveryOptions];
  }

  return v2;
}

- (_ADRapportLinkConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADRapportLinkConfigurationMutation;
  v6 = [(_ADRapportLinkConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end