@interface _AFASRSharedUserInfoMutation
- (_AFASRSharedUserInfoMutation)initWithBase:(id)base;
- (id)getLoggableSharedUserId;
- (id)getLoggableUserIdHash;
- (id)getPersonaId;
- (id)getSharedUserId;
@end

@implementation _AFASRSharedUserInfoMutation

- (id)getPersonaId
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    personaId = self->_personaId;
  }

  else
  {
    personaId = [(AFASRSharedUserInfo *)self->_base personaId];
  }

  return personaId;
}

- (id)getLoggableUserIdHash
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    loggableUserIdHash = self->_loggableUserIdHash;
  }

  else
  {
    loggableUserIdHash = [(AFASRSharedUserInfo *)self->_base loggableUserIdHash];
  }

  return loggableUserIdHash;
}

- (id)getLoggableSharedUserId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    loggableSharedUserId = self->_loggableSharedUserId;
  }

  else
  {
    loggableSharedUserId = [(AFASRSharedUserInfo *)self->_base loggableSharedUserId];
  }

  return loggableSharedUserId;
}

- (id)getSharedUserId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    sharedUserId = self->_sharedUserId;
  }

  else
  {
    sharedUserId = [(AFASRSharedUserInfo *)self->_base sharedUserId];
  }

  return sharedUserId;
}

- (_AFASRSharedUserInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFASRSharedUserInfoMutation;
  v6 = [(_AFASRSharedUserInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end