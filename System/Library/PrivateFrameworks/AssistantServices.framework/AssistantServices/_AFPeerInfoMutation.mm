@interface _AFPeerInfoMutation
- (BOOL)getIsCommunalDevice;
- (BOOL)getIsDeviceOwnedByCurrentUser;
- (BOOL)getIsLocationSharingDevice;
- (BOOL)getIsSiriCloudSyncEnabled;
- (_AFPeerInfoMutation)initWithBase:(id)base;
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
    assistantIdentifier = self->_assistantIdentifier;
  }

  else
  {
    assistantIdentifier = [(AFPeerInfo *)self->_base assistantIdentifier];
  }

  return assistantIdentifier;
}

- (id)getSharedUserIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    sharedUserIdentifier = self->_sharedUserIdentifier;
  }

  else
  {
    sharedUserIdentifier = [(AFPeerInfo *)self->_base sharedUserIdentifier];
  }

  return sharedUserIdentifier;
}

- (id)getIdsIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    idsIdentifier = self->_idsIdentifier;
  }

  else
  {
    idsIdentifier = [(AFPeerInfo *)self->_base idsIdentifier];
  }

  return idsIdentifier;
}

- (id)getIdsDeviceUniqueIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    idsDeviceUniqueIdentifier = self->_idsDeviceUniqueIdentifier;
  }

  else
  {
    idsDeviceUniqueIdentifier = [(AFPeerInfo *)self->_base idsDeviceUniqueIdentifier];
  }

  return idsDeviceUniqueIdentifier;
}

- (id)getRapportEffectiveIdentifier
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    rapportEffectiveIdentifier = self->_rapportEffectiveIdentifier;
  }

  else
  {
    rapportEffectiveIdentifier = [(AFPeerInfo *)self->_base rapportEffectiveIdentifier];
  }

  return rapportEffectiveIdentifier;
}

- (id)getMediaSystemIdentifier
{
  if (*(&self->_mutationFlags + 1))
  {
    mediaSystemIdentifier = self->_mediaSystemIdentifier;
  }

  else
  {
    mediaSystemIdentifier = [(AFPeerInfo *)self->_base mediaSystemIdentifier];
  }

  return mediaSystemIdentifier;
}

- (id)getMediaRouteIdentifier
{
  if ((*(&self->_mutationFlags + 1) & 2) != 0)
  {
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
  }

  else
  {
    mediaRouteIdentifier = [(AFPeerInfo *)self->_base mediaRouteIdentifier];
  }

  return mediaRouteIdentifier;
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
    name = self->_name;
  }

  else
  {
    name = [(AFPeerInfo *)self->_base name];
  }

  return name;
}

- (id)getBuildVersion
{
  if ((*(&self->_mutationFlags + 1) & 0x40) != 0)
  {
    buildVersion = self->_buildVersion;
  }

  else
  {
    buildVersion = [(AFPeerInfo *)self->_base buildVersion];
  }

  return buildVersion;
}

- (id)getUserInterfaceIdiom
{
  if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
  {
    userInterfaceIdiom = self->_userInterfaceIdiom;
  }

  else
  {
    userInterfaceIdiom = [(AFPeerInfo *)self->_base userInterfaceIdiom];
  }

  return userInterfaceIdiom;
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
    myriadTrialTreatment = self->_myriadTrialTreatment;
  }

  else
  {
    myriadTrialTreatment = [(AFPeerInfo *)self->_base myriadTrialTreatment];
  }

  return myriadTrialTreatment;
}

- (id)getHomeKitAccessoryIdentifier
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    homeKitAccessoryIdentifier = self->_homeKitAccessoryIdentifier;
  }

  else
  {
    homeKitAccessoryIdentifier = [(AFPeerInfo *)self->_base homeKitAccessoryIdentifier];
  }

  return homeKitAccessoryIdentifier;
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
    roomName = self->_roomName;
  }

  else
  {
    roomName = [(AFPeerInfo *)self->_base roomName];
  }

  return roomName;
}

- (id)getProductType
{
  if ((*(&self->_mutationFlags + 1) & 0x20) != 0)
  {
    productType = self->_productType;
  }

  else
  {
    productType = [(AFPeerInfo *)self->_base productType];
  }

  return productType;
}

- (id)getAceVersion
{
  if (*(&self->_mutationFlags + 2))
  {
    aceVersion = self->_aceVersion;
  }

  else
  {
    aceVersion = [(AFPeerInfo *)self->_base aceVersion];
  }

  return aceVersion;
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

- (_AFPeerInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFPeerInfoMutation;
  v6 = [(_AFPeerInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end