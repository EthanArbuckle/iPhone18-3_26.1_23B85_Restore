@interface _ADRapportLinkConnectionOptionsMutation
- (_ADRapportLinkConnectionOptionsMutation)initWithBase:(id)base;
- (int64_t)getUsesOnDemandConnection;
@end

@implementation _ADRapportLinkConnectionOptionsMutation

- (int64_t)getUsesOnDemandConnection
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_usesOnDemandConnection;
  }

  else
  {
    return [(ADRapportLinkConnectionOptions *)self->_base usesOnDemandConnection];
  }
}

- (_ADRapportLinkConnectionOptionsMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADRapportLinkConnectionOptionsMutation;
  v6 = [(_ADRapportLinkConnectionOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end