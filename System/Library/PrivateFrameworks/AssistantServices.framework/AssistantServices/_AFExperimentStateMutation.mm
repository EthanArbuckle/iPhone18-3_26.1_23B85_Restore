@interface _AFExperimentStateMutation
- (BOOL)getDidEnd;
- (_AFExperimentStateMutation)initWithBase:(id)base;
- (id)getEndingGroupIdentifier;
- (id)getLastSyncDate;
- (id)getVersion;
@end

@implementation _AFExperimentStateMutation

- (id)getVersion
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    version = self->_version;
  }

  else
  {
    version = [(AFExperimentState *)self->_base version];
  }

  return version;
}

- (id)getEndingGroupIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    endingGroupIdentifier = self->_endingGroupIdentifier;
  }

  else
  {
    endingGroupIdentifier = [(AFExperimentState *)self->_base endingGroupIdentifier];
  }

  return endingGroupIdentifier;
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
    lastSyncDate = self->_lastSyncDate;
  }

  else
  {
    lastSyncDate = [(AFExperimentState *)self->_base lastSyncDate];
  }

  return lastSyncDate;
}

- (_AFExperimentStateMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentStateMutation;
  v6 = [(_AFExperimentStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end