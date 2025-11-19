@interface _ADRapportLinkTransportOptionsMutation
- (_ADRapportLinkTransportOptionsMutation)initWithBase:(id)a3;
- (int64_t)getAllowsAWDL;
- (int64_t)getAllowsBLE;
- (int64_t)getAllowsBTPipe;
- (int64_t)getAllowsForceAWDL;
- (int64_t)getAllowsForceBLE;
- (int64_t)getAllowsInfraWiFi;
- (int64_t)getNoL2Cap;
@end

@implementation _ADRapportLinkTransportOptionsMutation

- (int64_t)getNoL2Cap
{
  if ((*&self->_mutationFlags & 0x80000000) != 0)
  {
    return self->_noL2Cap;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base noL2Cap];
  }
}

- (int64_t)getAllowsForceAWDL
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_allowsForceAWDL;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsForceAWDL];
  }
}

- (int64_t)getAllowsForceBLE
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_allowsForceBLE;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsForceBLE];
  }
}

- (int64_t)getAllowsBTPipe
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_allowsBTPipe;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsBTPipe];
  }
}

- (int64_t)getAllowsInfraWiFi
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_allowsInfraWiFi;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsInfraWiFi];
  }
}

- (int64_t)getAllowsBLE
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_allowsBLE;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsBLE];
  }
}

- (int64_t)getAllowsAWDL
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_allowsAWDL;
  }

  else
  {
    return [(ADRapportLinkTransportOptions *)self->_base allowsAWDL];
  }
}

- (_ADRapportLinkTransportOptionsMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADRapportLinkTransportOptionsMutation;
  v6 = [(_ADRapportLinkTransportOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end