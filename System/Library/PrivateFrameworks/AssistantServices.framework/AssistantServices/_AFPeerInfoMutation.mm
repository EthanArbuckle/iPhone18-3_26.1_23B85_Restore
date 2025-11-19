@interface _AFPeerInfoMutation
- (BOOL)getIsCommunalDevice;
- (BOOL)getIsDeviceOwnedByCurrentUser;
- (BOOL)getIsLocationSharingDevice;
- (BOOL)getIsSiriCloudSyncEnabled;
- (_AFPeerInfoMutation)initWithBase:(id)a3;
- (id)getAceVersion;
- (id)getAssistantIdentifier;
- (id)getBuildVersion;
- (id)getHomeKitAccessoryIdentifier;
- (id)getIdsDeviceUniqueIdentifier;
- (id)getIdsIdentifier;
- (id)getMediaRouteIdentifier;
- (id)getMediaSystemIdentifier;
- (id)getMyriadTrialTreatment;
- (id)getName;
- (id)getProductType;
- (id)getRapportEffectiveIdentifier;
- (id)getRoomName;
- (id)getSharedUserIdentifier;
- (id)getUserInterfaceIdiom;
@end

@implementation _AFPeerInfoMutation

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_assistantIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base assistantIdentifier];
  }

  return v2;
}

- (id)getSharedUserIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_sharedUserIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base sharedUserIdentifier];
  }

  return v2;
}

- (id)getIdsIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_idsIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base idsIdentifier];
  }

  return v2;
}

- (id)getIdsDeviceUniqueIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_idsDeviceUniqueIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base idsDeviceUniqueIdentifier];
  }

  return v2;
}

- (id)getRapportEffectiveIdentifier
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_rapportEffectiveIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base rapportEffectiveIdentifier];
  }

  return v2;
}

- (id)getMediaSystemIdentifier
{
  if (*(&self->_mutationFlags + 1))
  {
    v2 = self->_mediaSystemIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base mediaSystemIdentifier];
  }

  return v2;
}

- (id)getMediaRouteIdentifier
{
  if ((*(&self->_mutationFlags + 1) & 2) != 0)
  {
    v2 = self->_mediaRouteIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base mediaRouteIdentifier];
  }

  return v2;
}

- (BOOL)getIsCommunalDevice
{
  if ((*(&self->_mutationFlags + 1) & 4) != 0)
  {
    return self->_isCommunalDevice;
  }

  else
  {
    return [(AFPeerInfo *)self->_base isCommunalDevice];
  }
}

- (id)getName
{
  if ((*(&self->_mutationFlags + 1) & 0x10) != 0)
  {
    v2 = self->_name;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base name];
  }

  return v2;
}

- (id)getBuildVersion
{
  if ((*(&self->_mutationFlags + 1) & 0x40) != 0)
  {
    v2 = self->_buildVersion;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base buildVersion];
  }

  return v2;
}

- (id)getUserInterfaceIdiom
{
  if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
  {
    v2 = self->_userInterfaceIdiom;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base userInterfaceIdiom];
  }

  return v2;
}

- (BOOL)getIsLocationSharingDevice
{
  if ((*(&self->_mutationFlags + 2) & 2) != 0)
  {
    return self->_isLocationSharingDevice;
  }

  else
  {
    return [(AFPeerInfo *)self->_base isLocationSharingDevice];
  }
}

- (id)getMyriadTrialTreatment
{
  if ((*(&self->_mutationFlags + 2) & 8) != 0)
  {
    v2 = self->_myriadTrialTreatment;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base myriadTrialTreatment];
  }

  return v2;
}

- (id)getHomeKitAccessoryIdentifier
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_homeKitAccessoryIdentifier;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base homeKitAccessoryIdentifier];
  }

  return v2;
}

- (BOOL)getIsDeviceOwnedByCurrentUser
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isDeviceOwnedByCurrentUser;
  }

  else
  {
    return [(AFPeerInfo *)self->_base isDeviceOwnedByCurrentUser];
  }
}

- (id)getRoomName
{
  if ((*(&self->_mutationFlags + 1) & 8) != 0)
  {
    v2 = self->_roomName;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base roomName];
  }

  return v2;
}

- (id)getProductType
{
  if ((*(&self->_mutationFlags + 1) & 0x20) != 0)
  {
    v2 = self->_productType;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base productType];
  }

  return v2;
}

- (id)getAceVersion
{
  if (*(&self->_mutationFlags + 2))
  {
    v2 = self->_aceVersion;
  }

  else
  {
    v2 = [(AFPeerInfo *)self->_base aceVersion];
  }

  return v2;
}

- (BOOL)getIsSiriCloudSyncEnabled
{
  if ((*(&self->_mutationFlags + 2) & 4) != 0)
  {
    return self->_isSiriCloudSyncEnabled;
  }

  else
  {
    return [(AFPeerInfo *)self->_base isSiriCloudSyncEnabled];
  }
}

- (_AFPeerInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFPeerInfoMutation;
  v6 = [(_AFPeerInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end