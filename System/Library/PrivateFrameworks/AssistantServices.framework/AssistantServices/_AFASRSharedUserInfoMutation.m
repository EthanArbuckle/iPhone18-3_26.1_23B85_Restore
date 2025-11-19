@interface _AFASRSharedUserInfoMutation
- (_AFASRSharedUserInfoMutation)initWithBase:(id)a3;
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
    v2 = self->_personaId;
  }

  else
  {
    v2 = [(AFASRSharedUserInfo *)self->_base personaId];
  }

  return v2;
}

- (id)getLoggableUserIdHash
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_loggableUserIdHash;
  }

  else
  {
    v2 = [(AFASRSharedUserInfo *)self->_base loggableUserIdHash];
  }

  return v2;
}

- (id)getLoggableSharedUserId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_loggableSharedUserId;
  }

  else
  {
    v2 = [(AFASRSharedUserInfo *)self->_base loggableSharedUserId];
  }

  return v2;
}

- (id)getSharedUserId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_sharedUserId;
  }

  else
  {
    v2 = [(AFASRSharedUserInfo *)self->_base sharedUserId];
  }

  return v2;
}

- (_AFASRSharedUserInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFASRSharedUserInfoMutation;
  v6 = [(_AFASRSharedUserInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end