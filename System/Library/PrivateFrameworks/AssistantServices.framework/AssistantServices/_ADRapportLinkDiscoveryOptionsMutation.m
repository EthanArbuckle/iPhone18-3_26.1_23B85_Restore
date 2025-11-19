@interface _ADRapportLinkDiscoveryOptionsMutation
- (_ADRapportLinkDiscoveryOptionsMutation)initWithBase:(id)a3;
- (int64_t)getIncludesFamily;
- (int64_t)getIncludesHome;
- (int64_t)getIncludesRemoraDevices;
@end

@implementation _ADRapportLinkDiscoveryOptionsMutation

- (int64_t)getIncludesRemoraDevices
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_includesRemoraDevices;
  }

  else
  {
    return [(ADRapportLinkDiscoveryOptions *)self->_base includesRemoraDevices];
  }
}

- (int64_t)getIncludesHome
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_includesHome;
  }

  else
  {
    return [(ADRapportLinkDiscoveryOptions *)self->_base includesHome];
  }
}

- (int64_t)getIncludesFamily
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_includesFamily;
  }

  else
  {
    return [(ADRapportLinkDiscoveryOptions *)self->_base includesFamily];
  }
}

- (_ADRapportLinkDiscoveryOptionsMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADRapportLinkDiscoveryOptionsMutation;
  v6 = [(_ADRapportLinkDiscoveryOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end