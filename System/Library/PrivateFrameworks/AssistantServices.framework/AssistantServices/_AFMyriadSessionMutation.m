@interface _AFMyriadSessionMutation
- (_AFMyriadSessionMutation)initWithBase:(id)a3;
- (id)getCurrentElectionAdvertisementData;
- (id)getCurrentElectionAdvertisementId;
- (id)getElectionAdvertisementDataByIds;
- (id)getSessionId;
- (unint64_t)getGeneration;
@end

@implementation _AFMyriadSessionMutation

- (id)getElectionAdvertisementDataByIds
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_electionAdvertisementDataByIds;
  }

  else
  {
    v2 = [(AFMyriadSession *)self->_base electionAdvertisementDataByIds];
  }

  return v2;
}

- (id)getCurrentElectionAdvertisementData
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_currentElectionAdvertisementData;
  }

  else
  {
    v2 = [(AFMyriadSession *)self->_base currentElectionAdvertisementData];
  }

  return v2;
}

- (id)getCurrentElectionAdvertisementId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_currentElectionAdvertisementId;
  }

  else
  {
    v2 = [(AFMyriadSession *)self->_base currentElectionAdvertisementId];
  }

  return v2;
}

- (id)getSessionId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_sessionId;
  }

  else
  {
    v2 = [(AFMyriadSession *)self->_base sessionId];
  }

  return v2;
}

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(AFMyriadSession *)self->_base generation];
  }
}

- (_AFMyriadSessionMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMyriadSessionMutation;
  v6 = [(_AFMyriadSessionMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end