@interface _AFExperimentStateMutation
- (BOOL)getDidEnd;
- (_AFExperimentStateMutation)initWithBase:(id)a3;
- (id)getEndingGroupIdentifier;
- (id)getLastSyncDate;
- (id)getVersion;
@end

@implementation _AFExperimentStateMutation

- (id)getVersion
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_version;
  }

  else
  {
    v2 = [(AFExperimentState *)self->_base version];
  }

  return v2;
}

- (id)getEndingGroupIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_endingGroupIdentifier;
  }

  else
  {
    v2 = [(AFExperimentState *)self->_base endingGroupIdentifier];
  }

  return v2;
}

- (BOOL)getDidEnd
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_didEnd;
  }

  else
  {
    return [(AFExperimentState *)self->_base didEnd];
  }
}

- (id)getLastSyncDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_lastSyncDate;
  }

  else
  {
    v2 = [(AFExperimentState *)self->_base lastSyncDate];
  }

  return v2;
}

- (_AFExperimentStateMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentStateMutation;
  v6 = [(_AFExperimentStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end