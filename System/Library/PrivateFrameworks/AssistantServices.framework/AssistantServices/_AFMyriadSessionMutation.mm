@interface _AFMyriadSessionMutation
- (_AFMyriadSessionMutation)initWithBase:(id)base;
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
    electionAdvertisementDataByIds = self->_electionAdvertisementDataByIds;
  }

  else
  {
    electionAdvertisementDataByIds = [(AFMyriadSession *)self->_base electionAdvertisementDataByIds];
  }

  return electionAdvertisementDataByIds;
}

- (id)getCurrentElectionAdvertisementData
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    currentElectionAdvertisementData = self->_currentElectionAdvertisementData;
  }

  else
  {
    currentElectionAdvertisementData = [(AFMyriadSession *)self->_base currentElectionAdvertisementData];
  }

  return currentElectionAdvertisementData;
}

- (id)getCurrentElectionAdvertisementId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    currentElectionAdvertisementId = self->_currentElectionAdvertisementId;
  }

  else
  {
    currentElectionAdvertisementId = [(AFMyriadSession *)self->_base currentElectionAdvertisementId];
  }

  return currentElectionAdvertisementId;
}

- (id)getSessionId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    sessionId = self->_sessionId;
  }

  else
  {
    sessionId = [(AFMyriadSession *)self->_base sessionId];
  }

  return sessionId;
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

- (_AFMyriadSessionMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMyriadSessionMutation;
  v6 = [(_AFMyriadSessionMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end