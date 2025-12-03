@interface _AFSharedUserInfoMutation
- (BOOL)getCompanionLinkReady;
- (BOOL)getIsDeviceOwner;
- (BOOL)getIsMediaFallbackUser;
- (BOOL)getPersonalRequestsEnabled;
- (_AFSharedUserInfoMutation)initWithBase:(id)base;
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
    iCloudAltDSID = self->_iCloudAltDSID;
  }

  else
  {
    iCloudAltDSID = [(AFSharedUserInfo *)self->_base iCloudAltDSID];
  }

  return iCloudAltDSID;
}

- (id)getHomeUserId
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    homeUserId = self->_homeUserId;
  }

  else
  {
    homeUserId = [(AFSharedUserInfo *)self->_base homeUserId];
  }

  return homeUserId;
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
    companionDeviceInfo = self->_companionDeviceInfo;
  }

  else
  {
    companionDeviceInfo = [(AFSharedUserInfo *)self->_base companionDeviceInfo];
  }

  return companionDeviceInfo;
}

- (id)getLoggableSharedUserId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    loggableSharedUserId = self->_loggableSharedUserId;
  }

  else
  {
    loggableSharedUserId = [(AFSharedUserInfo *)self->_base loggableSharedUserId];
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
    sharedUserId = [(AFSharedUserInfo *)self->_base sharedUserId];
  }

  return sharedUserId;
}

- (_AFSharedUserInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSharedUserInfoMutation;
  v6 = [(_AFSharedUserInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end