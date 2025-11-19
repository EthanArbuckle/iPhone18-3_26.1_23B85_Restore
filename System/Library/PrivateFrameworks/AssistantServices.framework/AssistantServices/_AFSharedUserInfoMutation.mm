@interface _AFSharedUserInfoMutation
- (BOOL)getCompanionLinkReady;
- (BOOL)getIsDeviceOwner;
- (BOOL)getIsMediaFallbackUser;
- (BOOL)getPersonalRequestsEnabled;
- (_AFSharedUserInfoMutation)initWithBase:(id)a3;
- (id)getCompanionDeviceInfo;
- (id)getHomeUserId;
- (id)getICloudAltDSID;
- (id)getLoggableSharedUserId;
- (id)getSharedUserId;
@end

@implementation _AFSharedUserInfoMutation

- (BOOL)getIsMediaFallbackUser
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_isMediaFallbackUser;
  }

  else
  {
    return [(AFSharedUserInfo *)self->_base isMediaFallbackUser];
  }
}

- (BOOL)getIsDeviceOwner
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_isDeviceOwner;
  }

  else
  {
    return [(AFSharedUserInfo *)self->_base isDeviceOwner];
  }
}

- (id)getICloudAltDSID
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_iCloudAltDSID;
  }

  else
  {
    v2 = [(AFSharedUserInfo *)self->_base iCloudAltDSID];
  }

  return v2;
}

- (id)getHomeUserId
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_homeUserId;
  }

  else
  {
    v2 = [(AFSharedUserInfo *)self->_base homeUserId];
  }

  return v2;
}

- (BOOL)getCompanionLinkReady
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_companionLinkReady;
  }

  else
  {
    return [(AFSharedUserInfo *)self->_base companionLinkReady];
  }
}

- (BOOL)getPersonalRequestsEnabled
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_personalRequestsEnabled;
  }

  else
  {
    return [(AFSharedUserInfo *)self->_base personalRequestsEnabled];
  }
}

- (id)getCompanionDeviceInfo
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_companionDeviceInfo;
  }

  else
  {
    v2 = [(AFSharedUserInfo *)self->_base companionDeviceInfo];
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
    v2 = [(AFSharedUserInfo *)self->_base loggableSharedUserId];
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
    v2 = [(AFSharedUserInfo *)self->_base sharedUserId];
  }

  return v2;
}

- (_AFSharedUserInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSharedUserInfoMutation;
  v6 = [(_AFSharedUserInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end