@interface _ADDeviceCirclePeerDataMutation
- (_ADDeviceCirclePeerDataMutation)initWithBase:(id)base;
- (id)getAceVersion;
- (id)getAssistantIdentifier;
- (id)getBuildVersion;
- (id)getHomeAccessoryInfo;
- (id)getIsLocationSharingDevice;
- (id)getIsSiriCloudSyncEnabled;
- (id)getMyriadTrialTreatment;
- (id)getProductType;
- (id)getSharedUserIdentifier;
- (id)getUserAssignedDeviceName;
- (id)getUserInterfaceIdiom;
@end

@implementation _ADDeviceCirclePeerDataMutation

- (id)getMyriadTrialTreatment
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    myriadTrialTreatment = self->_myriadTrialTreatment;
  }

  else
  {
    myriadTrialTreatment = [(ADDeviceCirclePeerData *)self->_base myriadTrialTreatment];
  }

  return myriadTrialTreatment;
}

- (id)getIsSiriCloudSyncEnabled
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    isSiriCloudSyncEnabled = self->_isSiriCloudSyncEnabled;
  }

  else
  {
    isSiriCloudSyncEnabled = [(ADDeviceCirclePeerData *)self->_base isSiriCloudSyncEnabled];
  }

  return isSiriCloudSyncEnabled;
}

- (id)getHomeAccessoryInfo
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    homeAccessoryInfo = self->_homeAccessoryInfo;
  }

  else
  {
    homeAccessoryInfo = [(ADDeviceCirclePeerData *)self->_base homeAccessoryInfo];
  }

  return homeAccessoryInfo;
}

- (id)getIsLocationSharingDevice
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    isLocationSharingDevice = self->_isLocationSharingDevice;
  }

  else
  {
    isLocationSharingDevice = [(ADDeviceCirclePeerData *)self->_base isLocationSharingDevice];
  }

  return isLocationSharingDevice;
}

- (id)getUserInterfaceIdiom
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    userInterfaceIdiom = self->_userInterfaceIdiom;
  }

  else
  {
    userInterfaceIdiom = [(ADDeviceCirclePeerData *)self->_base userInterfaceIdiom];
  }

  return userInterfaceIdiom;
}

- (id)getUserAssignedDeviceName
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    userAssignedDeviceName = self->_userAssignedDeviceName;
  }

  else
  {
    userAssignedDeviceName = [(ADDeviceCirclePeerData *)self->_base userAssignedDeviceName];
  }

  return userAssignedDeviceName;
}

- (id)getSharedUserIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    sharedUserIdentifier = self->_sharedUserIdentifier;
  }

  else
  {
    sharedUserIdentifier = [(ADDeviceCirclePeerData *)self->_base sharedUserIdentifier];
  }

  return sharedUserIdentifier;
}

- (id)getProductType
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    productType = self->_productType;
  }

  else
  {
    productType = [(ADDeviceCirclePeerData *)self->_base productType];
  }

  return productType;
}

- (id)getBuildVersion
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    buildVersion = self->_buildVersion;
  }

  else
  {
    buildVersion = [(ADDeviceCirclePeerData *)self->_base buildVersion];
  }

  return buildVersion;
}

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    assistantIdentifier = self->_assistantIdentifier;
  }

  else
  {
    assistantIdentifier = [(ADDeviceCirclePeerData *)self->_base assistantIdentifier];
  }

  return assistantIdentifier;
}

- (id)getAceVersion
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    aceVersion = self->_aceVersion;
  }

  else
  {
    aceVersion = [(ADDeviceCirclePeerData *)self->_base aceVersion];
  }

  return aceVersion;
}

- (_ADDeviceCirclePeerDataMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceCirclePeerDataMutation;
  v6 = [(_ADDeviceCirclePeerDataMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end